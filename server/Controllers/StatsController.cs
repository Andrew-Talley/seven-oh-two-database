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
    public class StatsController : ControllerBase
    {
        private readonly MockTrialContext _context;

        public StatsController(MockTrialContext context)
        {
            _context = context;
        }

        [HttpGet]
        [Route("bestroundpd")]
        public async Task<IActionResult> getBestRoundPd()
        {
            try
            {
                return Ok(await _context.bestRoundPds.ToListAsync());
            }
            catch (Exception e)
            {
                return BadRequest(e);
            }
        }

        [HttpGet]
        [Route("singlebestpd")]
        public async Task<IActionResult> getSingleBestPd()
        {
            try
            {
                return Ok(await _context.singleBestPds.ToListAsync());
            }
            catch (Exception e)
            {
                return BadRequest(e);
            }
        }

        [HttpGet]
        [Route("groupmatchup")]
        public async Task<IActionResult> getGroupMatchups()
        {
            try
            {
                return Ok(await _context.groupMatchups.ToListAsync());
            }
            catch (Exception e)
            {
                return BadRequest(e);
            }
        }
    }
}