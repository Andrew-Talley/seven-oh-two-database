using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MockTrial.DTOs
{
    public class ExtremeRecordDTO
    {
        [Key]
        public string type { get; set; }

        public int tournament_id { get; set; }

        public int team_num { get; set; }

        public string team_name { get; set; }

        public int wins { get; set; }

        public int ties { get; set; }

        public int losses { get; set; }

        [Column("totalPD")]
        public int pd { get; set; }

        [Column("totalCS")]
        public int cs { get; set; }

        [Column("totalOCS")]
        public int ocs { get; set; }

        public int year { get; set; }

        public string tournament_name { get; set; }

        public string level { get; set; }
    }
}