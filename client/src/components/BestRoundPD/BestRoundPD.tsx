import * as React from 'react';
import { ListGroup, ListGroupItem, ListGroupItemHeading, ListGroupItemText } from 'reactstrap';
import { StatPanel } from '../StatPanel/StatPanel';
import useAxios from '@use-hooks/axios';

export const BestRoundPD: React.FC = () => {
  const { response, loading, error } = useAxios({
    url: '/api/stats/bestroundpd',
    trigger: 'go'
  });

  const data = response?.data[0];
  console.log(data);
  const date = data && Intl.DateTimeFormat('en-us', {
    year: 'numeric',
    month: 'short',
    day: 'numeric'
  }).format(new Date(data.start_date));

  return (
    <StatPanel
      heading="Highest Single-Round PD"
      body={
        error ? <span className="text-danger">{error.message}</span> :
        loading || !data ? 'Loading...' :
        <React.Fragment>
          <h3>{data.team_name}</h3>
          <div className="text-muted d-flex flex-column">
            <span>{data.tournament_name}, {date}</span>
            <span>R{data.round_num}, {data.side} vs. {data.opp_num} ({data.opp_name})</span>
            <span>Average PD: +{data.avg_pd}</span>
          </div>
        </React.Fragment>
      }
    />
  )
}