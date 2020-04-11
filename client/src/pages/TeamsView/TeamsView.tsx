import * as React from 'react';
import { TeamTable } from '../../components/TeamTable/TeamTable';
import useAxios from '@use-hooks/axios';

export const TeamsView: React.FC = () => {
  const { response, loading, error } = useAxios({
    url: '/api/teams',
    trigger: ''
  });

  const data = response?.data;
  console.log(data);

  return (
    <React.Fragment>
      <h1>All Teams</h1>
      {loading ? <span>Loading...</span> :
      error ? <span className="text-danger">{error.message}</span> :
      !data || typeof(data) !== 'object' ? <span className="text-danger">Error while loading teams</span> :
      <TeamTable data={data} />}
    </React.Fragment>
  );
}