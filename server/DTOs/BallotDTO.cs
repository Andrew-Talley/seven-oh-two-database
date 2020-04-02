using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class BallotDTO
    {
        public int ballot_id { get; set; }

        public int tournament_id { get; set; }

        public int pl_num { get; set; }

        public int round_num { get; set; }

        public int pd { get; set; }

        public char ballot_result { get; set; }
    }
}