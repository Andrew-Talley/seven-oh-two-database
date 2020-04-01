using System;
using System.Text;
using System.Threading.Tasks;
using System.Collections.Generic;
using Microsoft.Extensions.Options;
using System.Security.Claims;
using MockTrial.Models;
using MockTrial.Helpers;
using MockTrial.Data;
using MockTrial.DTOs;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace MockTrial.Services
{
    public interface IMockTrialService
    {
    }

    public class MockTrialService : IMockTrialService
    {
        private readonly MockTrialContext _context;

        public MockTrialService(MockTrialContext context)
        {
            _context = context;
        }
    }
}