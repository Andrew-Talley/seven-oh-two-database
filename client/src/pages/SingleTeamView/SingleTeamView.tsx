import * as React from 'react';
import useAxios from '@use-hooks/axios';
import { Table } from 'reactstrap';
import { Link, useRouteMatch } from 'react-router-dom';
import { MatchupCell } from '../../components/MatchupsCell/MatchupCell';
import { ResultsCell } from '../../components/ResultsCell/ResultsCell';

export const SingleTeamView: React.FC = () => {
  const { year, teamNum } = useRouteMatch<Record<'year'|'teamNum', string>>().params;

  const { response, loading, error } = useAxios({
    url: `/api/teams/${year}/${teamNum}`,
    trigger: `${year}-${teamNum}`
  });

  const data = response?.data;

  const teamName = data?.team.team_name;
  const tournaments = data?.data;

  return (
    error ? <span className="text-danger">{error.message}</span> :
    loading || !data ? <span>Loading...</span> :
    <React.Fragment>
      <h1>{teamName}</h1>
      {data?.team.tpr_points && <h3>TPR: {data?.team.tpr_rank}</h3>}
      <h2>Tournaments</h2>
      {tournaments.map((tournament: any) => {
        const t = tournament.tournament;
        const results = tournament.tournamentResults;
        const { matchups } = t.tournamentResults[0] as { matchups: any[] };

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
                  {matchups.sort((a, b) => a.round_num - b.round_num).map(m => (
                    <MatchupCell
                      key={m.round_num}
                      match={m}
                      ballots={m.ballots}
                    />
                  ))}
                  <ResultsCell results={results} />
                </tr>
              </tbody>
            </Table>
          </React.Fragment>
        );
      })}
    </React.Fragment>
  )
}