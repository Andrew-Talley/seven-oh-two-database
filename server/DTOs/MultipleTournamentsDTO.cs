using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class MultipleTournamentsDTO
    {
        [Key]
        public int tournament_id { get; set; }

        public string name { get; set; }

        public string level { get; set; }

        public DateTime? start_date { get; set; }

        public DateTime? end_date { get; set; }

        public string host { get; set; }

        public int? teamCount { get; set; }

        public double? avgPoints { get; set; }
    }   
}