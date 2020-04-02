using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class TeamNameDTO
    {
        public int team_num { get; set; }

        public int year { get; set; }

        public string team_name { get; set; }
    }
}