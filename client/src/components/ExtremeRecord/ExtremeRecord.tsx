import * as React from 'react';

interface ExtremeRecordProps {
  team_name: string;
  tournament_name: string;
  level: string;
  year: string;
  wins: number;
  ties: number;
  losses: number;
  cs: number;
  ocs: number;
  pd: number;
}
export const ExtremeRecord: React.FC<ExtremeRecordProps> = ({ team_name, tournament_name, level, year, wins, ties, losses, cs, ocs, pd }) => (
  <React.Fragment>
    <h3>{team_name}</h3>
    <div className="text-muted d-flex flex-column">
      <span>{tournament_name} ({level}), {year}</span>
      <span>{wins}-{losses}-{ties} CS: {cs}, OCS: {ocs}, PD: {pd > 0 && '+'}{pd}</span>
    </div>
  </React.Fragment>
)