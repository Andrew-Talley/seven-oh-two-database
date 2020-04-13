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
                var ttr = _context.teamTournamentResults
                    .Where(ttr => ttr.tournament_id == id)
                    .Select(t => new {
                        t.team_num,
                        matchups = t.matchups.Select(m => new {
                            m.tournament_id,
                            m.team_num,
                            m.opp_num,
                            m.round_num,
                            m.side
                        }).Where(m => m.team_num == t.team_num)
                    });

                return Ok(
                            await (from r in ttr
                            join t in _context.teamInfos
                                on r.team_num equals t.team_num
                            where t.year == year
                            join tti in _context.TournamentTeamData
                                on t.team_num equals tti.team_num
                            where tti.tournament_id == id
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
                            }).ToListAsync()
                            );
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