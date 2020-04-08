using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace MockTrial.DTOs
{
    public class TeamTournamentResultsDTO
    {
        public int tournament_id { get; set; }

        public int team_num { get; set; }

        public int won_spamta { get; set; }

        public int spamta_honorable_mention { get; set; }

        public int spamta_ranks { get; set; }

        public List<MatchupDTO> matchups { get; set; }

        public TeamInfoDTO teamInfo { get; set; }

        public TournamentDTO tournament { get; set; }

        public List<StudentDTO> students { get; set; }
    }
}