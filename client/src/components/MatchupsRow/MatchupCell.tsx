import * as React from 'react';

const matchupCSS: React.CSSProperties = {
  display: 'grid',
  gridTemplateColumns: 'repeat(3, 1fr)'
}

interface Props {
  match: any;
  ballots: any[];
}
export const MatchupCell: React.FC<Props> = ({ match, ballots }) => {
  const numBallots = ballots.length;
  const pds = ballots.map((b: any) => b.pd);

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
            {pd > 0 ? '+' : ''}{pd}
          </span>
        ))}
      </div>
    </td>
  );
}