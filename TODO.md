## Client Side:
- [ ] Finish `TournamentsView`
- [ ] Finish `SingleTournamentView`
- [ ] Create `TeamsView`
- [ ] Create `SingleTeamView`
- [ ] Create `CasesView`
- [ ] Finish `Stats`
  - TPR Groups
    - [X] Show how often teams beat each other in R1 by TPR group
    - [X] Show how often teams got bids by TPR group this year vs. past years
    - [ ] Link all to endpoint
  - Superlatives
    - [X] Largest single-round PD (by average PD across ballots)
    - [X] Largest single-ballot PD
    - [X] Best record at an AMTA tournament
    - [X] Worst record at an AMTA tournament
    - [ ] Link all to endpoint

## Server Side:
- [ ] Create endpoints for tournament views

## Database Side:
- [ ] Create procedures for `Stats`
  - [ ] TPR Groups procedure
  - [ ] Superlatives procedure (or maybe just a query? I think that might be enough for some)
- [ ] Create view for `TournamentsView`