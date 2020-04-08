using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class CaseNamesDTO
    {
        public int year { get; set; }

        public string level { get; set; }

        public string case_name { get; set; }

        public CaseDetailsDTO caseDetails { get; set; }
    }
}