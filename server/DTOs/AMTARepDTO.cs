using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class AMTARepDTO
    {
        [Column("amta_rep_num")]
        public int amta_num { get; set; }

        public string amta_rep { get; set; }

        public int tournament_id { get; set; }

        public TournamentDTO tournament { get; set; }
    }
}