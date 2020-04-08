using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class WitnessDetailsDTO
    {
        [Column("witness_name")]
        public string name { get; set; }

        [Column("witness_type")]
        public string type { get; set; }

        [Column("witness_side")]
        public string side { get; set; }

        [Column("witness_affidaivit")]
        public string affidaivit { get; set; }

        public CaseComponentsDTO caseComponents { get; set; }
    }
}