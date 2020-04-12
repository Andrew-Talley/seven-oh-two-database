using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MockTrial.DTOs
{
    public class GroupMatchupsDTO
    {
        [Column("percent-wins")]
        public decimal percent_wins { get; set; }

        [Key]
        public string designator { get; set; }

        public string opp_designator { get; set; }
    }
}