using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class TeamTournamentResultsDTO
    {
        public int tournament_id { get; set; }

        public int team_num { get; set; }

        public int won_spamta { get; set; }

        public int spamta_honorable_mention { get; set; }

        public int spamta_ranks { get; set; }
    }
}