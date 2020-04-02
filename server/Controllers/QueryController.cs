using Microsoft.AspNetCore.Mvc;
using MockTrial.DTOs;
using MockTrial.Data;
using MockTrial.Models;
using System;
using System.Net;
using EntityGraphQL;
using EntityGraphQL.Schema;

namespace MockTrial.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class QueryController : ControllerBase
    {
        private readonly MockTrialContext _context;
        private readonly SchemaProvider<MockTrialContext> _schemaProvider;

        public QueryController(MockTrialContext context, SchemaProvider<MockTrialContext> schemaProvider)
        {
            this._context = context;
            this._schemaProvider = schemaProvider;
        }

        public IActionResult Post([FromBody] QueryRequest query)
        {
            try
            {
                var result = _schemaProvider.ExecuteQuery(query, _context, null, null);
                if(result.Errors.Count > 0)
                {
                    return BadRequest(result);
                }
                return Ok(result);
            } catch (Exception e)
            {
                return BadRequest(e);
            }
        }
    }
}