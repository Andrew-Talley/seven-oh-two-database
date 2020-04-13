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
    public class TeamsController : ControllerBase
    {
        private readonly MockTrialContext _context;

        public TeamsController(MockTrialContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> getTeams(int year)
        {
            if(year == 0)
            {
                return BadRequest("A year was not specified");
            }

            try
            {                
                return Ok(await _context.teamInfos
                .Where(t => t.year == year)
                .Select(t => new {
                    teamNum = t.team_num,
                    teamName = t.team_name,
                    tprRank = t.tpr_rank,
                    tprPoints = t.tpr_points
                })
                .Distinct()
                .ToListAsync());
            } catch(Exception e)
            {
                return BadRequest(e.Message);
            }
        }

        [HttpGet]
        [Route("{year:int}/{num:int}")]
        public async Task<IActionResult> getTeam(int year, int num) {
            try
            {
                var teamTournamentDataTask = _context.TournamentTeamData
                    .Where(ttd => ttd.team_num == num && ttd.year == year)
                    .ToListAsync();

                var teamDataTask = _context.teamInfos
                    .Where(t => t.year == year && t.team_num == num)
                    .SingleOrDefaultAsync();

                var tournamentsTask = _context.tournaments                   
                    .Include(t => t.tournamentResults)
                        .ThenInclude(tr => tr.matchups)
                            .ThenInclude(m => m.ballots)
                    .Where(t => t.year == year) 
                    .ToListAsync();

                var teamData = await teamDataTask;
                var tournaments = await tournamentsTask;
                var teamTournamentData = await teamTournamentDataTask;

                // Remove cycles and cut down data a bit
                foreach(var t in tournaments)
                {
                    t.tournamentResults = t.tournamentResults.Where(tr => tr.team_num == num).ToList();
                    foreach(var tr in t.tournamentResults)
                    {
                        tr.tournament = null;
                        foreach(var m in tr.matchups)
                        {
                            m.teamTournamentResults = null;
                            foreach(var b in m.ballots)
                            {
                                b.matchup = null;
                            }
                        }
                    }
                }

                var data = (from t in tournaments
                            join ttd in teamTournamentData
                                on t.tournament_id equals ttd.tournament_id
                            select new {
                                tournament = t,
                                tournamentResults = ttd
                            }).ToList();

                return Ok(new {
                    team = teamData,
                    data
                });
            } catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }
    }
}