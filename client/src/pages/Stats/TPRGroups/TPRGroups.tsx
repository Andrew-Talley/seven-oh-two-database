import * as React from 'react';
import { Table } from 'reactstrap';
import useAxios from '@use-hooks/axios';

const GROUPS = ['A', 'B', 'C', 'D']
export const TPRGroups: React.FC = () => {
  const { response, loading, error } = useAxios({
    url: '/api/stats/groupmatchup',
    trigger: 'go'
  });

  const respData = response?.data;

  const data = Array.from(
    new Array(4), () => Array.from(new Array(4))
  )
  respData?.forEach((m: any) => {
    const team_ind = GROUPS.indexOf(m.designator);
    const opp_ind = GROUPS.indexOf(m.opp_designator);
    data[team_ind][opp_ind] = m.percent_wins;
  })
  
  console.log(data);

  const bidFrequency: [string[], string[]] = [
    ['60%', '30%', '10%', '5%'],
    ['70%', '20%', '7%', '3%']
  ];

  const groupsHeader = () => {
    return (
      <thead className="thead-dark">
        <tr>
          <th>Group</th>
          {GROUPS.map(group => (
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
              <th scope="row">Group {GROUPS[i]}</th>
              {row.map((percent, j) => (
                <td key={j}>{parseFloat(percent).toFixed(3)}</td>
              ))}
            </tr>
          ))}
        </tbody>
      </Table>
      {/* <h2 className="mt-4">Bid Frequency</h2>
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
      </Table> */}
    </React.Fragment>
  )
}