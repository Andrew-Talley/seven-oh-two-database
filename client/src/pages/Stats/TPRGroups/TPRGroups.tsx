import * as React from 'react';
import { Table } from 'reactstrap';

export const TPRGroups: React.FC = () => {
  const groups = ['A', 'B', 'C', 'D']
  const data: string[][] = [
    ['50%', '60%', '70%', '80%'],
    ['40%', '50%', '60%', '70%'],
    ['30%', '40%', '50%', '60%'],
    ['20%', '30%', '40%', '50%']
  ];

  const bidFrequency: [string[], string[]] = [
    ['60%', '30%', '10%', '5%'],
    ['70%', '20%', '7%', '3%']
  ];

  const groupsHeader = () => {
    return (
      <thead className="thead-dark">
        <tr>
          <th>Group</th>
          {groups.map(group => (
              <th>Group {group}</th>
            ))}
        </tr>
      </thead>
    )
  }

  return (
    <React.Fragment>
      <h1 className="display-3">TPR Group Stats</h1>
      <h2>Inter-group records</h2>
      <p className="text-muted">Looking at R1 results only from past ORCS</p>
      <Table>
        {groupsHeader()}
        <tbody>
          {data.map((row, i) => (
            <tr key={i}>
              <th scope="row">Group {groups[i]}</th>
              {row.map((percent, j) => (
                <td key={j}>{percent}</td>
              ))}
            </tr>
          ))}
        </tbody>
      </Table>
      <h2 className="mt-4">Bid Frequency</h2>
      <p className="text-muted">How often teams got bids by TPR Group before 2020 vs. this season</p>
      <Table>
        {groupsHeader()}
        <tbody>
          {bidFrequency.map((freq, i) => (
            <tr key={i}>
              <th scope="row">{i == 0 ? 'Pre-2020' : '2020'}</th>
              {freq.map((f, j) => (
                <td key={j}>{f}</td>
              ))}
            </tr>
          ))}
        </tbody>
      </Table>
    </React.Fragment>
  )
}