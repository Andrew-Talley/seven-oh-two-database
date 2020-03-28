using Microsoft.EntityFrameworkCore;
using MockTrial.DTOs;

namespace MockTrial.Data
{
    public class MockTrialContext : DbContext
    {
        public MockTrialContext(DbContextOptions<MockTrialContext> options) : base(options)
        {}

        public DbSet<MockTrialDto> trials {get;set;}

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<MockTrialDto>().ToTable("trials");
        }
    }
}