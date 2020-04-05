import { TournamentTeamData } from '../graphql-types';

export function compareTeamData(a: TournamentTeamData, b: TournamentTeamData) {
  const [aBal, bBal] = [a.wins + a.ties / 2, b.wins + b.ties / 2];
  if (aBal !== bBal) {
    return aBal - bBal;
  } else if (a.totalCS !== b.totalCS) {
    return a.totalCS - b.totalCS;
  } else if (a.totalOCS !== b.totalOCS) {
    return a.totalOCS - b.totalOCS;
  } else {
    return a.totalPD - b.totalPD;
  }
}

export function sortTeamData(teams: TournamentTeamData[]) {
  return teams.sort(compareTeamData);
}