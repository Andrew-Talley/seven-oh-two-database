using Microsoft.EntityFrameworkCore;
using MockTrial.DTOs;
using System.ComponentModel;

namespace MockTrial.Data
{
    public class MockTrialContext : DbContext
    {
        public MockTrialContext(DbContextOptions<MockTrialContext> options) : base(options)
        {}

        [Description()]
        public DbSet<AMTARepDTO> amtaReps { get; set; }
        public DbSet<BallotDTO> ballots { get; set; }
        public DbSet<CaseComponentsDTO> caseComponents { get; set; }
        public DbSet<CaseDetailsDTO> caseDetails { get; set; }
        public DbSet<CaseNamesDTO> caseNames { get; set; }
        public DbSet<ExhibitDetailsDTO> exhibitDetails { get; set; }
        public DbSet<MatchupDTO> matchups { get; set; }
        public DbSet<StudentDTO> students { get; set; }
        public DbSet<TeamInfoDTO> teamInfos { get; set; }
        public DbSet<TeamTournamentResultsDTO> teamTournamentResults { get; set; }
        public DbSet<TournamentDTO> tournaments { get; set; }
        public DbSet<TournamentTeamInfoDTO> TournamentTeamData { get; set; }
        public DbSet<WitnessDetailsDTO> witnessDetails { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Declare all of the primary keys
            modelBuilder.Entity<AMTARepDTO>().HasKey(a => new {a.amta_num, a.tournament_id});
            modelBuilder.Entity<BallotDTO>().HasKey(b => b.ballot_id);
            modelBuilder.Entity<CaseComponentsDTO>().HasKey(c => new {c.case_name, c.n_key});
            modelBuilder.Entity<CaseDetailsDTO>().HasKey(c => c.case_name);
            modelBuilder.Entity<CaseNamesDTO>().HasKey(c => new {c.year, c.level});
            modelBuilder.Entity<ExhibitDetailsDTO>().HasKey(e => e.exhibit_url);
            modelBuilder.Entity<MatchupDTO>().HasKey(m => new {m.tournament_id, m.pi_num, m.def_num});
            modelBuilder.Entity<StudentDTO>().HasKey(s => new {s.student_id, s.tournament_id, s.team_num});
            modelBuilder.Entity<TeamInfoDTO>().HasKey(t => new {t.team_num, t.year});
            modelBuilder.Entity<TeamTournamentResultsDTO>().HasKey(t => new {t.tournament_id, t.team_num});
            modelBuilder.Entity<TournamentDTO>().HasKey(t => t.tournament_id);
            modelBuilder.Entity<TournamentTeamInfoDTO>().HasKey(t => new {t.tournament_id, t.team_num, t.year});
            modelBuilder.Entity<WitnessDetailsDTO>().HasKey(w => w.name);


            modelBuilder.Entity<AMTARepDTO>().ToTable("amtarep");
            modelBuilder.Entity<BallotDTO>().ToTable("ballot");
            modelBuilder.Entity<CaseComponentsDTO>().ToTable("casecomponents");
            modelBuilder.Entity<CaseDetailsDTO>().ToTable("casedetails");
            modelBuilder.Entity<CaseNamesDTO>().ToTable("casenames");
            modelBuilder.Entity<ExhibitDetailsDTO>().ToTable("exhibitdetails");
            modelBuilder.Entity<MatchupDTO>().ToTable("matchup");
            modelBuilder.Entity<StudentDTO>().ToTable("student");
            modelBuilder.Entity<TeamInfoDTO>().ToTable("teaminfo");
            modelBuilder.Entity<TeamTournamentResultsDTO>().ToTable("teamtournamentresults");
            modelBuilder.Entity<TournamentDTO>().ToTable("tournament");
            modelBuilder.Entity<WitnessDetailsDTO>().ToTable("witnessdetails");
        }
    }
}