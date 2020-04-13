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
            try {
                return Ok(await _context.allTournamentsInfo.ToListAsync());
            } catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }

        [HttpGet]
        [Route("{id:int}/name")]
        public async Task<IActionResult> getTournamentName(int id)
        {
            try {
                var tourn = await _context.tournaments
                            .Where(t => t.tournament_id == id)
                            .ToListAsync();

                return Ok(tourn[0].tournament_name);
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
                var year = (await _context.tournaments.SingleAsync(t => t.tournament_id == id)).year;

                var teamsTourneyTask = _context.teamInfos
                                    .Join(_context.TournamentTeamData,
                                    ti => ti.team_num,
                                    ttd => ttd.team_num,
                                    (ti, ttd) => new {ti, ttd})
                                    .Where(res => res.ti.year == year && res.ttd.tournament_id == id)
                                    .ToListAsync();

                var ttrTask = _context.teamTournamentResults
                    .Where(ttr => ttr.tournament_id == id)
                    .ToListAsync();

                var matchupTask = _context.matchups
                    .Where(m => m.tournament_id == id)
                    .ToListAsync();

                var ballotTask = _context.ballots
                    .Where(b => b.tournament_id == id)
                    .ToListAsync();

                var ttr = await ttrTask;
                var matchups = await matchupTask;
                var ballots = await ballotTask;
                var teamsWithTourney = await teamsTourneyTask;

                // This breaks a cyclical pattern where e.g. matchup -> ballot -> matchup -> ballot -> ... occurs
                foreach(var result in ttr)
                {
                    foreach(var m in result.matchups)
                    {
                        m.teamTournamentResults = null;
                        // Not all of the ballots are loaded for some reason so I have to do that here
                        m.ballots = ballots.Where(b => b.team_num == m.team_num && b.opp_num == m.opp_num &&
                            b.round_num == m.round_num).ToList();
                        foreach(var b in m.ballots)
                        {
                            b.matchup = null;
                        }
                    }
                }

                return Ok(from r in ttr
                            join t in teamsWithTourney
                                on r.team_num equals t.ti.team_num
                            select new {
                                teams = new {
                                    team = new {
                                        num = t.ti.team_num,
                                        name = t.ti.team_name
                                    },
                                    matchups = r.matchups,
                                    wins = t.ttd.total_wins,
                                    ties = t.ttd.total_ties,
                                    losses = t.ttd.total_losses,
                                    CS = t.ttd.total_cs,
                                    OCS = t.ttd.total_ocs,
                                    PD = t.ttd.total_pd
                                }
                            });
            } catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }

        [HttpGet]
        [Route("{id:int}/students")]
        public async Task<IActionResult> getStudents(int id)
        {
            try {
                var year = (await _context.tournaments.SingleOrDefaultAsync(t => t.tournament_id == id)).year;
                return Ok(await _context.students
                    .Join(_context.teamInfos,
                    s => s.team_num,
                    t => t.team_num,
                    (s, t) => new {
                        s.student_name,
                        s.tournament_id,
                        t.team_num,
                        t.team_name,
                        s.ranks,
                        s.role,
                        s.side,
                        t.year
                    })
                    .Where(entry => entry.year == year && entry.tournament_id == id)
                    .ToListAsync());
            } catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }
    }
}