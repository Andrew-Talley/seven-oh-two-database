import * as React from 'react';
import useAxios from '@use-hooks/axios';
import { StatPanel } from '../StatPanel/StatPanel';

export const BestBallotPD: React.FC = () => {
  const { response, loading, error } = useAxios({
    url: '/api/stats/singlebestpd',
    trigger: 'go'
  });

  const data = response?.data[0];
  const date = data && Intl.DateTimeFormat('en-us', {
    year: 'numeric',
    month: 'short',
    day: 'numeric'
  }).format(new Date(data.start_date));

  return (
    <StatPanel
      heading="Highest Single-Ballot PD"
      body={
        error ? <span className="text-danger">{error.message}</span> :
        loading || !data ? 'Loading...' :
        <React.Fragment>
          <h3>{data.team_name}</h3>
          <div className="text-muted d-flex flex-column">
            <span>{data.tournament_name}, {date}</span>
            <span>R{data.round_num}, {data.side} vs. {data.opp_num} ({data.opp_name})</span>
            <span>+{data.pd}</span>
          </div>
        </React.Fragment>
      }
    />
  );
}