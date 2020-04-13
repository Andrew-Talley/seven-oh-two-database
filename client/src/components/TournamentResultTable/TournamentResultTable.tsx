import * as React from 'react';
import { useGetTouranmentResultDataQuery } from "../../graphql-types"
import useAxios from '@use-hooks/axios';
import { Table } from 'reactstrap';

const resultCSS: React.CSSProperties = {
  display: 'grid',
  gridTemplateColumns: 'repeat(7, 1fr)'
}
const matchupCSS: React.CSSProperties = {
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

  const data = response?.data;

  const matchups = React.useMemo(() => {
    if (!data) return;
    return data[0].teams.matchups;
  }, [data]);
  const teamData: any[] = React.useMemo(() => {
    if (!data) return;
    if (!matchups) return;
    return data.map((team: any) => team.teams)
              .map((t: any) => ({
                team: t.team,
                record: {
                  wins: t.wins,
                  ties: t.ties,
                  losses: t.losses,
                  cs: t.cs,
                  ocs: t.ocs,
                  pd: t.pd
                },
                matchups: matchups.filter((m: any) => m.team_num === t.team.num)
              }));
  }, [data, matchups]);

  console.log(teamData);

  return (
    error ? <h2 className="text-danger">{error.message}</h2> :
    loading ? <h2>Loading...</h2> :
    !teamData ? <h2>Couldn't find data for tournament id {id}</h2> :
    <Table>
      <thead>
        <tr>
          <th>Team</th>
          {[1,2,3,4].map(i => (
            <th key={i}>Round {i}</th>
          ))}
          <th>Summary</th>
        </tr>
      </thead>
      <tbody>
        {teamData.map((team: any) => (
          <tr key={team.team.num}>
            <td className="d-flex flex-column">
              <span>{team.team.num}</span>
              <span>{team.team.name}</span>
            </td>
            {team.matchups.map((match: any) => {
              const numBallots = match.ballots.length;
              const results = match.ballots.map((b: any) => b.ballot_result);
              const pds = match.ballots.map((b: any) => b.pd);

              const resultCSS: React.CSSProperties = {
                display: 'grid',
                gridTemplateColumns: `repeat(${numBallots}, 1fr)`
              };
              return (
                <td key={match.round_num} style={{textAlign: 'center'}}>
                  <div style={matchupCSS}>
                    <span>{match.side}</span>
                    <span>v.</span>
                    <span>{match.opp_num}</span>
                  </div>
                  <div style={resultCSS}>
                    {pds.map((pd: number, i: number) => (
                      <span key={i}>
                        {pd > 0 ? 'W' : pd < 0 ? 'L' : 'T'}
                      </span>
                    ))}
                  </div>
                  <div style={resultCSS}>
                    {pds.map((pd: number, i: number) => (
                      <span key={i}>
                        {pd}
                      </span>
                    ))}
                  </div>
                </td>
              )
            })}
            <td style={{textAlign: 'center'}}>
              <div style={resultCSS}>
                <span></span>
                <span>{team.record.wins}</span>
                <span>-</span>
                <span>{team.record.losses}</span>
                <span>-</span>
                <span>{team.record.ties}</span>
              </div>
              <div style={matchupCSS}>
                <span>CS</span>
                <span>OCS</span>
                <span>PD</span>
                <span>{team.record.cs}</span>
                <span>{team.record.ocs}</span>
                <span>{team.record.pd}</span>
              </div>
            </td>
          </tr>
        ))}
      </tbody>
    </Table>
  )
}