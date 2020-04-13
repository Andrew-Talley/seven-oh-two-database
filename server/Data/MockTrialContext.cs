using Microsoft.EntityFrameworkCore;
using MockTrial.DTOs;
using System.ComponentModel;

namespace MockTrial.Data
{
    public class MockTrialContext : DbContext
    {
        public MockTrialContext(DbContextOptions<MockTrialContext> options) : base(options)
        {}

        #region DbSet Declarations
        public DbSet<AMTARepDTO> amtaReps { get; set; }
        public DbSet<BallotDTO> ballots { get; set; }
        public DbSet<BestRoundPdDTO> bestRoundPds { get; set; }
        public DbSet<CaseComponentsDTO> caseComponents { get; set; }
        public DbSet<CaseDetailsDTO> caseDetails { get; set; }
        public DbSet<CaseNamesDTO> caseNames { get; set; }
        public DbSet<ExhibitDetailsDTO> exhibitDetails { get; set; }
        public DbSet<GroupMatchupsDTO> groupMatchups { get; set; }
        public DbSet<MatchupDTO> matchups { get; set; }
        public DbSet<MultipleTournamentsDTO> allTournamentsInfo { get; set; }
        public DbSet<SingleBestPdDTO> singleBestPds { get; set; }
        public DbSet<StudentDTO> students { get; set; }
        public DbSet<TeamInfoDTO> teamInfos { get; set; }
        public DbSet<TeamTournamentResultsDTO> teamTournamentResults { get; set; }
        public DbSet<TournamentDTO> tournaments { get; set; }
        public DbSet<TournamentTeamInfoDTO> TournamentTeamData { get; set; }
        public DbSet<WitnessDetailsDTO> witnessDetails { get; set; }
        public DbSet<ExtremeRecordDTO> extremeRecords { get; set; }
        #endregion

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Declare all of the primary keys
            #region Primary Key Declarations
            modelBuilder.Entity<AMTARepDTO>().HasKey(a => new {a.amta_num, a.tournament_id});
            modelBuilder.Entity<BallotDTO>().HasKey(b => b.ballot_id);
            modelBuilder.Entity<CaseComponentsDTO>().HasKey(c => new {c.case_name, c.n_key});
            modelBuilder.Entity<CaseDetailsDTO>().HasKey(c => c.case_name);
            modelBuilder.Entity<CaseNamesDTO>().HasKey(c => new {c.year, c.level});
            modelBuilder.Entity<ExhibitDetailsDTO>().HasKey(e => e.exhibit_url);
            modelBuilder.Entity<MatchupDTO>().HasKey(m => new {m.tournament_id, m.team_num, m.opp_num});
            modelBuilder.Entity<StudentDTO>().HasKey(s => new {s.student_id, s.tournament_id, s.team_num});
            modelBuilder.Entity<TeamInfoDTO>().HasKey(t => new {t.team_num, t.year});
            modelBuilder.Entity<TeamTournamentResultsDTO>().HasKey(t => new {t.tournament_id, t.team_num});
            modelBuilder.Entity<TournamentDTO>().HasKey(t => t.tournament_id);
            modelBuilder.Entity<GroupMatchupsDTO>().HasKey(t => new { t.designator, t.opp_designator });
            modelBuilder.Entity<TournamentTeamInfoDTO>().HasKey(t => new {t.tournament_id, t.team_num, t.year});
            modelBuilder.Entity<WitnessDetailsDTO>().HasKey(w => w.name);
            modelBuilder.Entity<SingleBestPdDTO>().HasKey(w => w.team_num);
            modelBuilder.Entity<BestRoundPdDTO>().HasKey(w => w.team_num);
            modelBuilder.Entity<ExtremeRecordDTO>();
            #endregion

            // Declare all of the foreign keys
            #region Foreign Key Declarations
            modelBuilder.Entity<AMTARepDTO>()
                .HasOne(a => a.tournament)
                .WithMany(t => t.amtaReps)
                .HasForeignKey(a => a.tournament_id);
            modelBuilder.Entity<CaseComponentsDTO>()
                .HasOne(cc => cc.caseDetails)
                .WithMany(cd => cd.caseComponents)
                .HasForeignKey(cc => cc.case_name);
            modelBuilder.Entity<CaseNamesDTO>()
                .HasOne<CaseDetailsDTO>(cn => cn.caseDetails)
                .WithOne(cd => cd.caseName)
                .HasForeignKey<CaseNamesDTO>(cn => cn.case_name);
            modelBuilder.Entity<ExhibitDetailsDTO>()
                .HasOne<CaseComponentsDTO>(e => e.caseComponents)
                .WithOne(c => c.exhibitDetails)
                .HasForeignKey<ExhibitDetailsDTO>(e => e.exhibit_url)
                .HasPrincipalKey<CaseComponentsDTO>(c => c.exhibit_url);
            modelBuilder.Entity<MatchupDTO>()
                .HasMany(m => m.ballots)
                .WithOne(b => b.matchup)
                .HasForeignKey(b => new {b.tournament_id, b.team_num, b.round_num})
                .HasPrincipalKey(m => new {m.tournament_id, m.team_num, m.round_num});
            modelBuilder.Entity<StudentDTO>()
                .HasOne(s => s.teamTournamentResults)
                .WithMany(t => t.students)
                .HasForeignKey(s => new {s.tournament_id, s.team_num});
            modelBuilder.Entity<TeamTournamentResultsDTO>()
                .HasOne(tr => tr.tournament)
                .WithMany(t => t.tournamentResults)
                .HasForeignKey(tr => tr.tournament_id);
            modelBuilder.Entity<TeamTournamentResultsDTO>()
                .HasMany(tr => tr.matchups)
                .WithOne(m => m.teamTournamentResults)
                .HasForeignKey(m => new {m.tournament_id, m.team_num})
                .HasPrincipalKey(ttr => new {ttr.tournament_id, ttr.team_num});
            modelBuilder.Entity<WitnessDetailsDTO>()
                .HasOne<CaseComponentsDTO>(w => w.caseComponents)
                .WithOne(c => c.witness)
                .HasForeignKey<WitnessDetailsDTO>(w => w.name)
                .HasPrincipalKey<CaseComponentsDTO>(c => c.witness_name);
            #endregion

            // Declare the table names for each of our DTOs
            #region Table Declarations
            modelBuilder.Entity<AMTARepDTO>().ToTable("amtarep");
            modelBuilder.Entity<BallotDTO>().ToTable("detailedballotview");
            modelBuilder.Entity<BestRoundPdDTO>().ToTable("bestroundpd");
            modelBuilder.Entity<CaseComponentsDTO>().ToTable("casecomponents");
            modelBuilder.Entity<CaseDetailsDTO>().ToTable("casedetails");
            modelBuilder.Entity<CaseNamesDTO>().ToTable("casenames");
            modelBuilder.Entity<ExhibitDetailsDTO>().ToTable("exhibitdetails");
            modelBuilder.Entity<GroupMatchupsDTO>().ToTable("group_matchups");
            modelBuilder.Entity<MatchupDTO>().ToTable("detailedmatchupview");
            modelBuilder.Entity<MultipleTournamentsDTO>().ToTable("alltournamentsinfo");
            modelBuilder.Entity<SingleBestPdDTO>().ToTable("singlebestpd");
            modelBuilder.Entity<StudentDTO>().ToTable("student");
            modelBuilder.Entity<TeamInfoDTO>().ToTable("teaminfo");
            modelBuilder.Entity<TeamTournamentResultsDTO>().ToTable("teamtournamentresults");
            modelBuilder.Entity<TournamentTeamInfoDTO>().ToTable("tournamentteaminfo");
            modelBuilder.Entity<TournamentDTO>().ToTable("tournament");
            modelBuilder.Entity<WitnessDetailsDTO>().ToTable("witnessdetails");
            modelBuilder.Entity<ExtremeRecordDTO>().ToTable("extremerecords");
            #endregion
        }
    }
}