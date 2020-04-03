# Final Project Normalization
## Prep work
1. Create `tournament_id` based on `(level, year, name)` 
2. Create `ballot_id` as an auto-incrementing primary key

## Functional Dependencies
### General Dependencies
- ballot_id is a super key
- (school, letter_rank) <-> team_name

### Multi-tournament dependencies
- (year) -> type_charge
- (year, level) -> case_name
- case_name -> {full_case, nationals_case, type_charge, charge\_[n], witness\_[n]\_name, exhibit\_[n]\_name, exhibit\_[n]\_url}
- exhibit\_[n]\_url -> exhibit\_[n]\_name
- witness\_[n]\_name -> {witness\_[n]\_type, witness\_[n]\_side, witness\_[n]\_affidaivit}

- (team_num, year) -> {team_name, tpr_rank, tpr_points, school}

### Single Tournament Dependencies
- PD -> BallotResult
- (level, year, name) -> tournament_id
- tournament_id -> {name, division, start_date, end_date, host, location, tab_note_[n], amta_rep_[n], bid_start_date, bid_end_date, bid_location, level}
- (tournament_id, team_num) -> {total_wins, total_ties, total_losses, total_ballots, team_name, earned_bid, earned_honorable_mention, won_spamta, spamta_honorable_mention, spamta_ranks, total_cs, total_ocs, total_pd, rank, student\_[n], role\_[n], ranks\_[n], side\_[n]}
- (total_wins, total_ties) -> total_ballots
- (tournament_id, rank) -> {earned_bid, earned_honorable_mention}
- (tournament_id, spamta_ranks) -> {won_spamta, spamta_honorable_mention}
- (tournament_id, team_num, round_num) -> {opp_num, opp_name, side}

## 0NF to 1NF
1. Convert tab_info rows into more specific pieces of info – first round coin flip, 6th place after R3, 7th_place_after_r3. Relabel these as more specific columns
2. Separate out students into new table `Student`
3. Separate AMTA reps into new table `AMTARep`
4. Separate out charges into new table `Charge`
5. Separate out witnesses into new table `Witness`
6. Separate out exhibits into new table `Exhibit`

Here are the tables this yields:

> `Student`: <u>tournament_id, team_num, num</u>, Student, Role, Ranks, side

> `AMTARep`: <u>tournament_id, num</u>, amta_rep

> `Charge`: <u>case_name, num</u>, charge

> `Witness`: <u>case_name, num</u>, witness_name, witness_type, witness_side, witness_affidaivit

> `Exhibit`: <u>case_name, ex_num</u>, exhibit_name, exhibit_url # Note – Unlike with other parts, here, the exhibit number is actually a relevant piece of information, as opposed to just an id

> `Remaining`: <u>ballot_id</u>, tournament_id, team_num, round_num, opp_num, side, PD, BallotResult, total_wins, total_ties, total_losses, total_ballots, team_name, school, letter_rank, tpr_rank, tpr_points, opp_name, earned_bid, earned_honorable_mention, won_spamta, spamta_honorable_mention, spamta_ranks, name, division, start_date, end_date, host, location, first_coint_flip, second_coin_flip, bid_start_date, bid_end_date, bid_location, third_coin_flip, 7th_place_after_r3, total_cs, total_ocs, total_pd, rank, level

## 1NF to 2NF
There is only one key attribute. Therefore, necessarily, each attribute depends on the entire key.

## 2NF to 3NF
The first general group of information is about specific cases. What case is used at a tournament depends on the year and level (since recent nationals tournaments have a unique case). The first natural step is to remove all attributes that depend on year and level:

### Table 1:
> `Case`: <u>year, level</u>, full_case, nationals_case, type_charge

Technically, since the type of charge (i.e., civil or criminal) depends only on the year, that can be broken into its own table:
### Table 1a:
> `TypeOfCase`: <u>year</u>, type_charge

### Table 2: 
> `Tournament`: <u>tournament_id</u>, name, division, start_date, end_date, host, location, first_coint_flip, second_coin_flip, bid_start_date, bid_end_date, bid_location, third_coin_flip, level, 7th_place_after_r3
>> Note: In `Tournament`, there is a dependency between (year, level, (name|location|host)) and every other attribute. But, since that makes those super keys for the relationship, it's still in 3NF and BCNF.

Next, we have the dependency (tournament_id, rank) -> {earned_bid, earned_honorable_mention}. This can be extracted to a separate table:

> `BidRecords`: <u>tournament_id, rank</u>, earned_bid, earned_honorable_mention

However, this isn't the most efficient way to store that information. Specifically: there is some number of teams _n_ that earned a bid. All teams with a rank ≤ _n_ got a bid. Therefore, the more efficient way to store this information is to store the number of teams that got a bid:

> ### Table 3:
> `NumberOfBids`: <u>tournament_id</u>, NumberOfBids

Then, to see if a team got a bid at a tournament, you can simply check if that team's rank ≤ NumberOfBids for that tournament.

Next, there are a number of attributes that depend on the year and the team_num. Separating these into their own table, we get:

> ### Table 4:
> `team_name`: <u>year, team_num</u>, team_name, tpr_rank, tpr_points

Of the remaining columns, we have a large number of columns that depend on (tournament_id, team_num). But within these, there's another non-key dependency – total_ballots depends on total_wins and total_ties (specifically – total_ballots = total_wins + (total_ties/2)). We could create a separate table for these, but since the equation for finding it is so simple, it would be more efficient to do that calculation in a view, so we can just remove total_ballots. This gives us another table:

> `Team`: <u>tournament_id, team_num</u>, total_wins, total_ties, total_losses, won_spamta, spamta_honorable_mention, spamta_ranks, total_cs, total_ocs, total_pd, rank, tpr_group_designator

However, many of these (wins, ties, losses, cs, ocs, pd, rank, and tpr_group_designator) can all be calculated from the ballot information and the information about other teams. Therefore, to maintain data integrity, these can all be removed and re-calculated with views. This results in the table:

> ### Table 5: 
> `TeamTournamentResults`: <u>tournament_id, team_num</u>, won_spamta, spamta_honorable_mention, spamta_ranks

Here are the remaining columns: tournament_id, ballot_id, round_num, team_num, opp_num, opp_name, side, PD, BallotResult

At this point, we run into a weird issue: by separating out the team information, we fell back into 0NF. Each team has its own "copy" of each ballot/round information, but because it also had team-specific information, the rows weren't duplicated. Now, with that information, there are duplicate values. Specifically: for every row, there is an identical row with (team_num, team_name) and (opp_num, opp_name) switched.

To fix this, we need to exclude rows where `side` = ∆. By doing this, we know that the team_num represents the π, and the opp_num represents the ∆. We can rename the columns to represent that – changing team_num to PlNum, and changing opp_num to DefNum. We should also exclude opp_name/DefName, since the information of which Team # represents which team has already been extracted into `Team`.

Now, we can look at the information that can be extracted from only tournament_id, PlNum, and round_num: DefNum, side. We can extract those into a new table:

> ### Table 6
> `Matchup`: <u>tournament_id, round_num, PlNum</u>, DefNum

The only other attribute with a non-key dependency is `BallotResult`. Like with `total_ballots`, we could extract this to its own table. But like with `total_ballots`, the calculation is simple enough that we're better off removing it and using a view to re-do the calculation.

> ### Table 7:
> `Ballot`: <u>ballot_id</u>, tournament_id, round_num, PlNum, PD, BallotResult

### A side Note (not for the final report)
Normalizing made it not easy to ask two vital questions: who did Team A play in Round x, and which side were they on? We haven't lost the data – for round x, there will be an entry in `Matchup` with Team A as either the plaintiff or the defense. At some point, we're going to need to make a view that has duplicate data by joining `Matchup` with itself – one from the "perspective" of the plaintiff, one from the "defense".
