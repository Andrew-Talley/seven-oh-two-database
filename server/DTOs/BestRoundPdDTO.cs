using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MockTrial.DTOs
{
    public class BestRoundPdDTO
    {
        [Key]
        public int team_num { get; set; }

        public int opp_num { get; set; }

        public int tournament_id { get; set; }

        public decimal avg_pd { get; set; }

        public string name { get; set; }

        public DateTime start_date { get; set; }
    }
}