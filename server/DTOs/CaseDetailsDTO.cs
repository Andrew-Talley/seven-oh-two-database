using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class CaseDetailsDTO
    {
        public string case_name { get; set; }

        public string full_case { get; set; }

        public int nationals_case { get; set; }

        public string type_charge { get; set; }
    }
}