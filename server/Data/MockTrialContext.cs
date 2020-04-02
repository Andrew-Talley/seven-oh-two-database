using Microsoft.EntityFrameworkCore;
using MockTrial.DTOs;

namespace MockTrial.Data
{
    public class MockTrialContext : DbContext
    {
        public MockTrialContext(DbContextOptions<MockTrialContext> options) : base(options)
        {}

        public DbSet<AMTARepDTO> amtaReps { get; set; }
        public DbSet<BallotDTO> ballots { get; set; }
        public DbSet<MatchupDTO> matchups { get; set; }
        public DbSet<StudentDTO> students { get; set; }
        public DbSet<TeamDTO> teams { get; set; }
        public DbSet<TeamNameDTO> teamNames { get; set; }
        public DbSet<TournamentDTO> tournaments { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AMTARepDTO>().ToTable("AMTARep");
            modelBuilder.Entity<BallotDTO>().ToTable("Ballot");
            modelBuilder.Entity<MatchupDTO>().ToTable("Matchup");
            modelBuilder.Entity<StudentDTO>().ToTable("Student");
            modelBuilder.Entity<TeamDTO>().ToTable("Team");
            modelBuilder.Entity<TeamNameDTO>().ToTable("TeamName");
            modelBuilder.Entity<TournamentDTO>().ToTable("Tournament");
        }
    }
}