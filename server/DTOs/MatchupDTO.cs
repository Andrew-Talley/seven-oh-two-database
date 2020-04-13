using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace MockTrial.DTOs
{
    public class MatchupDTO
    {
        public int tournament_id { get; set; }

        public int team_num { get; set; }

        public int round_num { get; set; }

        public int opp_num { get; set; }

        public string side { get; set; }

        public List<BallotDTO> ballots { get; set; }

        public TeamTournamentResultsDTO teamTournamentResults { get; set; }
    }
}