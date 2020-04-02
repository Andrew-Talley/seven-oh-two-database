using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace MockTrial.DTOs
{
    public class TournamentDTO
    {
        public int tournament_id { get; set; }

        public string tournament_name { get; set; }

        public string division { get; set; }

        public DateTime start_date { get; set; }

        public DateTime end_date { get; set; }

        public string host { get; set; }

        public string location { get; set; }

        public string first_coin_flip { get; set; }

        public string second_coin_flip { get; set; }

        public DateTime bid_start_date { get; set; }

        public DateTime bid_end_date { get; set; }

        public string bid_location { get; set; }

        public string third_coin_flip { get; set; }

        public string level { get; set; }

        [Column("7th_place_after_r3")]
        public string seventh_place_after_r3 { get; set; }

        public int number_of_bids { get; set; }

        public int year { get; set; }
    }
}