using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class CaseComponentsDTO
    {
        public string case_name { get; set; }

        public int n_key { get; set; }

        public string charge { get; set; }

        public string witness_name { get; set; }

        public string exhibit_url { get; set; }
    }
}