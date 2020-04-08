using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class StudentDTO
    {
        public int student_id { get; set; }

        public int tournament_id { get; set; }

        public int team_num { get; set; }

        [Column("student")]
        public string student_name { get; set; }

        public string role { get; set; }

        public int ranks { get; set; }

        public string side { get; set; }

        public TeamTournamentResultsDTO teamTournamentResults { get; set; }
    }   
}