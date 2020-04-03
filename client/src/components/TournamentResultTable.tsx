import * as React from 'react';
import { useGetTouranmentResultDataQuery } from "../graphql-types"
import { Table, Row, Col } from "reactstrap";

const matchupCSS: React.CSSProperties = {
  display: 'grid',
  gridTemplateColumns: 'repeat(3, 1fr)'
}
const resultCSS: React.CSSProperties = {
  display: 'grid',
  gridTemplateColumns: 'repeat(7, 1fr)'
}

interface Props {
  id: number
}
export const TournamentResultTable: React.FC<Props> = ({ id }) => {
  const { data, loading, error } = useGetTouranmentResultDataQuery({ 
    variables: { id }
  });

  return (
    error ? <h2 className="text-danger">{error.message}</h2> :
    loading ? <h2>Loading...</h2> :
    data.tournament === undefined ? <h2>Couldn't find data for tournament id {id}</h2> :
    <Table>
      <thead>
        <tr>
          <th>Team</th>
          {new Array(4).map((_, i) => (
            <th key={i}>Round {i+1}</th>
          ))}
          <th>Summary</th>
        </tr>
      </thead>
      <tbody>
        {data.tournament.teams.map(team => (
          <tr key={team.team.num}>
            <td className="d-flex flex-column">
              <span>{team.team.num}</span>
              <span>{team.team.name}</span>
            </td>
            {team.matchups.map(match => {
              const side = team.team.num === match.pl.num ? 'pl' : 'def';
              const sideChar = (side === 'pl' ? '∏' : '∆');
              const opp = (
                side === 'pl' ? match.def : match.pl
              );
              const numBallots = match.pds.length;
              const results = match.pds.map(pd => pd > 0 ? 'W' : pd < 0 ? 'L' : 'T');

              const resultCSS: React.CSSProperties = {
                display: 'grid',
                gridTemplateColumns: `repeat{${numBallots}, 1fr}`
              };
              return (
                <td className="d-flex flex-column">
                  <div style={matchupCSS}>
                    <span>{sideChar}</span>
                    <span>v.</span>
                    <span>{opp.num}</span>
                  </div>
                  <div style={resultCSS}>
                    {results.map((r, i) => (
                      <span key={i}>
                        {r}
                      </span>
                    ))}
                  </div>
                  <div style={resultCSS}>
                    {match.pds.map((pd, i) => (
                      <span key={i}>{pd}</span>
                    ))}
                  </div>
                </td>
              )
            })}
            <td>
              <div style={resultCSS}>
                <span></span>
                <span>{team.wins}</span>
                <span>-</span>
                <span>{team.losses}</span>
                <span>-</span>
                <span>{team.ties}</span>
              </div>
              <div style={matchupCSS}>
                <span>CS</span>
                <span>OCS</span>
                <span>PD</span>
                <span>{team.totalCS}</span>
                <span>{team.totalOCS}</span>
                <span>{team.totalPD}</span>
              </div>
            </td>
          </tr>
        ))}
      </tbody>
    </Table>
  )
}