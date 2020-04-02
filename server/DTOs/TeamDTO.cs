using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class TeamDTO
    {
        public int tournament_id { get; set; }

        public int team_num { get; set; }

        public int total_wins { get; set; }

        public int total_ties { get; set; }

        public int total_losses { get; set; }

        public int won_SPAMTA { get; set; }

        public int SPAMTA_honorable_mention { get; set; }

        public int SPAMTA_ranks { get; set; }

        public int total_cs { get; set; }

        public int total_ocs { get; set; }

        public int total_pd { get; set; }

        public int rank { get; set; }
    }
}