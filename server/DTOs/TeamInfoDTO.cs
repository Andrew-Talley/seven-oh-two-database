using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class TeamInfoDTO
    {
        public int team_num { get; set; }

        public int year { get; set; }

        public string team_name { get; set; }

        public int tpr_rank { get; set; }

        public double tpr_points { get; set; }

        public string school { get; set; }
    }
}