import * as React from 'react';
import { useGetTouranmentResultDataQuery } from "../../graphql-types"
import useAxios from '@use-hooks/axios';
import { Table } from 'reactstrap';
import { MatchupCell } from '../MatchupsRow/MatchupCell';

const resultCSS: React.CSSProperties = {
  display: 'grid',
  gridTemplateColumns: 'repeat(7, 1fr)'
}
const csCSS: React.CSSProperties = {
  display: 'grid',
  gridTemplateColumns: 'repeat(3, 1fr)'
}


interface Props {
  id: number
}
export const TournamentResultTable: React.FC<Props> = ({ id }) => {
  const { response, loading, error } = useAxios({
    url: `/api/tournaments/${id}`,
    trigger: id.toString()
  });

  const data = response?.data.teams.map((t: any) => t.teams);
  const ballots = response?.data.ballots;
  console.log(data);

  return (
    error ? <h2 className="text-danger">{error.message}</h2> :
    loading ? <h2>Loading...</h2> :
    !data ? <h2>Couldn't find data for tournament id {id}</h2> :
    <Table>
      <thead>
        <tr>
          <th>Team</th>
          {[1,2,3,4].map(i => (
            <th style={{textAlign: 'center'}} key={i}>Round {i}</th>
          ))}
          <th style={{textAlign: 'center'}}>Summary</th>
        </tr>
      </thead>
      <tbody>
        {data.map((team: any) => (
          <tr key={team.team.num}>
            <td className="d-flex flex-column">
              <span>{team.team.num}</span>
              <span>{team.team.name}</span>
            </td>
            {team.matchups.sort((a: any, b: any) => a.round_num - b.round_num).map((match: any) => {
              const matchBallots = ballots.filter((b: any) => b.team_num === match.team_num && b.opp_num === match.opp_num && b.round_num === match.round_num);
              return (
                <MatchupCell
                  match={match}
                  ballots={matchBallots}
                />
              );
            })}
            <td style={{textAlign: 'center'}}>
              <div style={resultCSS}>
                <span></span>
                <span>{team.wins}</span>
                <span>-</span>
                <span>{team.losses}</span>
                <span>-</span>
                <span>{team.ties}</span>
              </div>
              <div style={csCSS}>
                <span>CS</span>
                <span>OCS</span>
                <span>PD</span>
                <span>{team.cs}</span>
                <span>{team.ocs}</span>
                <span>{team.pd}</span>
              </div>
            </td>
          </tr>
        ))}
      </tbody>
    </Table>
  )
}