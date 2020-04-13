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
                var teamData = await _context.teamInfos
                    .Where(t => t.year == year && t.team_num == num)
                    .Include(t => t.tournamentResults)
                    .ToListAsync();

                return Ok({
                    teamInfo = null,
                    tournaments = null 
                });
            } catch (Exception e)
            {
                return BadRequest(e.Message);
            }
        }
    }
}