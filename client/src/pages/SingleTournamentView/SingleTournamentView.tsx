import * as React from 'react';
import { TournamentResultTable } from "../../components/TournamentResultTable/TournamentResultTable";
import { useRouteMatch } from 'react-router-dom';
import { useGetSingleTournamentViewQuery, TournamentTeamData } from '../../graphql-types';
import useAxios from '@use-hooks/axios';

import Table, { Column } from 'react-bootstrap-table-next';
import { sortTeamData, compareTeamData } from '../../functions/sortTeamData';


const COLUMNS: Column[] = [{
  dataField: 'num',
  text: 'School',
  formatter: (cell, row) => (
    <div className="d-flex flex-column">
      <span>{cell}</span>
      <span>{row.team.name}</span>
    </div>
  )
}, {
  dataField: 'record',
  text: 'Record',
  isDummyField: true,
  formatter: (_, row) => {
    return [row.wins, row.losses, row.ties].join(' - ');
  },
  sortFunc: (_, __, order, a, b) => {
    return compareTeamData(a as TournamentTeamData , b as TournamentTeamData) * (order === 'asc' ? 1 : -1);
  },
}, {
  dataField: 'totalCS',
  text: 'CS'
}, {
  dataField: 'totalOCS',
  text: 'OCS'
}, {
  dataField: 'totalPD',
  text: 'PD'
}];


export const SingleTournamentView: React.FC = () => {
  const { id } = useRouteMatch<{ id: string }>().params;
  const { data, loading, error } = useGetSingleTournamentViewQuery();
  


  return (
    // loading ? <span>Loading...</span> :
    // error ? <p className="text-danger">{error.message}</p> :
    // data.tournament === undefined ? <span>Couldn't find tournament ${id}</span> :
    <React.Fragment>
      <h1>Tournament Name</h1>
      <h2 className="mt-4">Top Teams</h2>
      
      {/* <Table keyField='num' columns={COLUMNS} data={data.tournament.teams} /> */}
      <TournamentResultTable id={parseInt(id)} />
    </React.Fragment>
  );
}