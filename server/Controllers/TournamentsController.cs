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
            var teams = _context.teamInfos.Select(t => new {t.team_num, t.year, t.tpr_points});
            var results = _context.teamTournamentResults.Select(t => new {t.team_num, t.tournament_id});
            var tourns = _context.tournaments
                .Select(t => new {t.tournament_id, t.division, t.level, t.tournament_name, t.start_date, t.end_date, t.host, t.year});

            var teamsWithResults = from r in results
                        join i in teams
                            on r.team_num equals i.team_num
                        select new {
                            id = r.tournament_id,
                            year = i.year,
                            tpr_points = i.tpr_points
                        };

            var query = tourns.Select(t => new {
                id = t.tournament_id,
                name = t.tournament_name,
                level = t.level,
                division = t.division,
                start_date = t.start_date,
                end_date = t.end_date,
                host = t.host,
                teamCount = teamsWithResults.Where(r => r.id == t.tournament_id && r.year == t.year).Count(),
                averageTPR = teamsWithResults.Where(r => r.id == t.tournament_id && r.year == t.year).Average(r => r.tpr_points)
            });
            
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