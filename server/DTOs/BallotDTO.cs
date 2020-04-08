using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class BallotDTO
    {
        public int ballot_id { get; set; }

        [Column("Matchup_tournament_id")]
        public int tournament_id { get; set; }

        [Column("Matchup_pi_num")]
        public int pi_num { get; set; }

        [Column("Matchup_round_num")]
        public int round_num { get; set; }

        public int pd { get; set; }

        public string ballot_result { get; set; }
    }
}