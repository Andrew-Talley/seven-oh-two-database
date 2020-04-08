using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class TournamentTeamInfoDTO
    {
        public int tournament_id { get; set; }

        public int team_num { get; set; }

        [Column("wins")]
        public int total_wins { get; set; }

        [Column("ties")]
        public int total_ties { get; set; }

        [Column("losses")]
        public int total_losses { get; set; }

        [Column("totalCS")]
        public int total_cs { get; set; }

        [Column("totalOCS")]
        public int total_ocs { get; set; }

        [Column("totalPD")]
        public int total_pd { get; set; }

        public int year { get; set; }
    }
}