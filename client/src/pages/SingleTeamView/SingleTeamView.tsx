import * as React from 'react';
import useAxios from '@use-hooks/axios';
import Table, { Column } from 'react-bootstrap-table-next';
import { Link, useRouteMatch } from 'react-router-dom';

export const SingleTeamView: React.FC = () => {
  const { year, teamNum } = useRouteMatch<Record<'year'|'teamNum', string>>().params;

  const { response, loading, error } = useAxios({
    url: `/api/teams/${teamNum}`,
    options: {
      params: {
        year
      }
    },
    trigger: `${year}-${teamNum}`
  });

  const data = response?.data;

  const teamName = data?.teamName || 'Vanderbilt University A';
  const tournaments = data?.tournaments;

  return (
    <React.Fragment>
      <h1>Team Name</h1>
      {}
    </React.Fragment>
  )
}