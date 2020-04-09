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
    }
}