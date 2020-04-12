using System;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class SingleBestPdDTO
    {
        [Key]
        public int ballot_id { get; set; }

        public int tournament_id { get; set; }

        public int round_num { get; set; }

        public int team_num { get; set; }

        // public int opp_num { get; set; }

        // public string tournament_name { get; set; }

        // public string team_name { get; set; }

        // public string opp_name { get; set; }

        public int pd { get; set; }

        public string side { get; set; }
    }
}