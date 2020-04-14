import * as React from 'react';
import useAxios from '@use-hooks/axios';
import { Table } from 'reactstrap';
import { Link, useRouteMatch } from 'react-router-dom';
import { MatchupCell } from '../../components/MatchupsCell/MatchupCell';

export const SingleTeamView: React.FC = () => {
  const { year, teamNum } = useRouteMatch<Record<'year'|'teamNum', string>>().params;

  const { response, loading, error } = useAxios({
    url: `/api/teams/${year}/${teamNum}`,
    trigger: `${year}-${teamNum}`
  });

  const data = response?.data;

  const teamName = data?.team.teamName;
  const tournaments = data?.data.map((t: any) => t.tournament);

  return (
    error ? <span className="text-danger">{error.message}</span> :
    loading || !data ? <span>Loading...</span> :
    <React.Fragment>
      <h1>{teamName}</h1>
      {data?.tpr_points && <h3>TPR: {data?.tpr_rank}</h3>}
      <h2>Tournaments</h2>
      {tournaments.map((t: any) => {
        const { matchups } = t.tournamentResults[0];

        return (
          <React.Fragment key={t.tournament_id}>
            <Link to={`/tournament/${t.tournament_id}`}>
              <h3>
                {t.tournament_name}
              </h3>
            </Link>
            <Table>
              <thead>
                <tr>
                  {matchups.map((_: any, r: any) => (
                    <th key={r} style={{textAlign: "center"}}>Round {r + 1}</th>
                  ))}
                  <th style={{textAlign: "center"}}>Results</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  {matchups.map((m: any) => (
                    <MatchupCell
                      key={m.round_num}
                      match={m}
                      ballots={m.ballots}
                    />
                  ))}
                </tr>
              </tbody>
            </Table>
          </React.Fragment>
        );
      })}
    </React.Fragment>
  )
}