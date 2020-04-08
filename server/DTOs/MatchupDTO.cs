using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class MatchupDTO
    {
        public int tournament_id { get; set; }

        public int pi_num { get; set; }

        public int round_num { get; set; }

        public int def_num { get; set; }
    }
}