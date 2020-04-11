using System;
using System.Linq;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using MockTrial.DTOs;
using MockTrial.Data;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace MockTrial.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class TournamentsController : ControllerBase
    {
        private readonly MockTrialContext _context;

        public TournamentsController(MockTrialContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> getTournaments()
        {
            var teams = await (from ti in _context.teamInfos
                        join ttr in _context.teamTournamentResults
                            on ti.team_num equals ttr.team_num
                        select new {
                            year = ti.year,
                            tpr = ti.tpr_points,
                            tournament = ttr.tournament_id
                        }).ToListAsync();

            var query = from t in _context.tournaments
                        join tm in teams
                            on t.tournament_id equals tm.tournament
                        select new {
                            id = t.tournament_id,
                            name = t.tournament_name,
                            start = t.start_date,
                            end = t.end_date,
                            host = t.host,
                            count = teams.Count,
                            averageTPR = teams.Average(entry => entry.tpr)
                        };
            try {
                return Ok(await query.ToListAsync());
            } catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }

        [HttpGet]
        [Route("{id:int}")]
        public async Task<IActionResult> getTournament(int id)
        {
            try {
                var ttr = await _context.teamTournamentResults
                    .Include(ttr => ttr.matchups)
                        .ThenInclude(m => m.ballots)
                    .Where(ttr => ttr.tournament_id == id).ToListAsync();

                foreach(var t in ttr)
                {
                    foreach(var m in t.matchups)
                    {
                        // IDK why but the server has cyclical inclusion of matchups -> ttr -> matchups -> ttr -> ...
                        m.teamTournamentResults = null;
                        foreach(var b in m.ballots)
                        {
                            // Same issue as above
                            b.matchup = null;
                        }
                    }                    
                }
                
                
                var teamTournamentInfo = await _context.TournamentTeamData.Where(t => t.tournament_id == id).ToListAsync();
                var year = teamTournamentInfo[0].year;
                
                var teams = await (from i in _context.teamInfos
                            join t in ttr
                                on i.team_num equals t.team_num
                            join tti in teamTournamentInfo
                                on i.team_num equals tti.team_num
                            where i.year == year
                            select new {
                                num = i.team_num,
                                name = i.team_name
                            }).ToListAsync();

                var ret = (from r in ttr
                            join t in teams
                                on r.team_num equals t.num
                            join tti in teamTournamentInfo
                                on t.num equals tti.team_num
                            select new {
                                teams = new {
                                    team = t,
                                    matchups = r.matchups,
                                    wins = tti.total_wins,
                                    ties = tti.total_ties,
                                    losses = tti.total_losses,
                                    CS = tti.total_cs,
                                    OCS = tti.total_ocs,
                                    PD = tti.total_pd
                                }
                            }).ToList();

                return Ok(ret);
            } catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }
    }
}