import * as React from 'react';
import { TournamentResultTable } from "../../components/TournamentResultTable/TournamentResultTable";
import { useRouteMatch } from 'react-router-dom';
import { useGetSingleTournamentViewQuery, TournamentTeamData } from '../../graphql-types';
import useAxios from '@use-hooks/axios';

import Table, { Column } from 'react-bootstrap-table-next';
import { compareTeamData } from '../../functions/sortTeamData';


export const SingleTournamentView: React.FC = () => {
  const { id } = useRouteMatch<{ id: string }>().params;
  const { response, loading, error } = useAxios({
    url: `/api/tournaments/${id}`,
    trigger: id.toString()
  });

  const data = response?.data;


  return (
    loading ? <span>Loading...</span> :
    error ? <p className="text-danger">{error.message}</p> :
    data === undefined ? <span>Couldn't find tournament ${id}</span> :
    <React.Fragment>
      <h1>Tournament Name</h1>
      <h2 className="mt-4">Top Teams</h2>
      
      {/* <Table keyField='num' columns={COLUMNS} data={data.tournament.teams} /> */}
      <TournamentResultTable id={parseInt(id)} />
    </React.Fragment>
  );
}