import * as React from 'react';

const resultCSS: React.CSSProperties = {
  display: 'grid',
  gridTemplateColumns: 'repeat(7, 1fr)'
}
const csCSS: React.CSSProperties = {
  display: 'grid',
  gridTemplateColumns: 'repeat(3, 1fr)'
}

interface ResultsProps {
  results: any;
}
export const ResultsCell: React.FC<ResultsProps> = ({ results }) => (
  <td style={{textAlign: 'center'}}>
    <div style={resultCSS}>
      <span></span>
      <span>{results.total_wins}</span>
      <span>-</span>
      <span>{results.total_losses}</span>
      <span>-</span>
      <span>{results.total_ties}</span>
    </div>
    <div style={csCSS}>
      <span>CS</span>
      <span>OCS</span>
      <span>PD</span>
      <span>{results.total_cs}</span>
      <span>{results.total_ocs}</span>
      <span>{results.total_pd}</span>
    </div>
  </td>
)