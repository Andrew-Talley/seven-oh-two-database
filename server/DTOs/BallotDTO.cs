using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class BallotDTO
    {
        public int ballot_id { get; set; }

        public int tournament_id { get; set; }

        [Column("round_num")]
        public int round_num { get; set; }

        [Column("team_num")]
        public int team_num { get; set; }

        [Column("opp_num")]
        public int opp_num { get; set; }

        public int pd { get; set; }

        public string side { get; set; }

        public MatchupDTO matchup { get; set; }
    }
}