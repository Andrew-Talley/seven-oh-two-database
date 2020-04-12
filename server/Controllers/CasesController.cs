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
    [Route("api")]
    public class CasesController : ControllerBase
    {
        private readonly MockTrialContext _context;

        public CasesController(MockTrialContext context)
        {
            _context = context;
        }

        [HttpGet]
        [Route("cases")]
        public async Task<IActionResult> getCases()
        {            
            try
            {
                return Ok(await _context.caseNames
                    .Include(cn => cn.caseDetails)
                    .Select(c => new {
                        year = c.year,
                        isNationals = c.caseDetails.nationals_case > 0, // MySQL stores bools as TINYINTs
                        caseName = c.case_name,
                        caseType = c.caseDetails.type_charge
                    })
                    .OrderByDescending(c => c.year)
                    .ToListAsync());
            } catch(Exception e)
            {
                return BadRequest(e.Message);
            }
        }

        [HttpGet]
        [Route("case")]
        public async Task<IActionResult> getCase(int year, string level)
        {
            try
            {         
                var query = _context.caseNames
                    .Include(cn => cn.caseDetails)
                        .ThenInclude(cd => cd.caseComponents)
                        .ThenInclude(cc => cc.witness)
                    .Include(cn => cn.caseDetails)
                        .ThenInclude(cd => cd.caseComponents)
                        .ThenInclude(cc => cc.exhibitDetails)
                    .Where(cn => cn.year == year && cn.level == level)
                    .Select(cn => new {
                        year = year,
                        level = level,
                        caseName = cn.case_name,
                        details = new {
                            cn.caseDetails.full_case,
                            cn.caseDetails.nationals_case,
                            cn.caseDetails.type_charge,
                            components = cn.caseDetails.caseComponents.Select(comp => new {
                                comp.charge,
                                exhibit = new {
                                    comp.exhibitDetails.exhibit_name,
                                    comp.exhibitDetails.exhibit_url
                                },
                                witness = new {
                                    comp.witness.affidaivit,
                                    comp.witness.name,
                                    comp.witness.side,
                                    comp.witness.type
                                }
                            })
                        }
                    });       
                return Ok(await query.ToListAsync());
            } catch(Exception e)
            {
                return BadRequest(e.Message);
            }
        }
    }
}