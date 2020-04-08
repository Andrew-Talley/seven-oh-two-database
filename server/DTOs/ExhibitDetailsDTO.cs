using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class ExhibitDetailsDTO
    {
        public string exhibit_name { get; set; }

        public string exhibit_url { get; set; }
    }
}