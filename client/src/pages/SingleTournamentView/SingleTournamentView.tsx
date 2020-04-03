import * as React from 'react';
import { TournamentResultTable } from "../../components/TournamentResultTable";
import { useRouteMatch } from 'react-router-dom';
import { useGetSingleTournamentViewQuery } from '../../graphql-types';

import Table from 'react-bootstrap-table-next';

const columns = [{
  dataField: 'id',
  text: 'Product ID'
}, {
  dataField: 'name',
  text: 'Product Name'
}, {
  dataField: 'price',
  text: 'Product Price'
}];


export const SingleTournamentView: React.FC = () => {
  const { id } = useRouteMatch<{ id: string }>().params;
  const { data, loading, error } = useGetSingleTournamentViewQuery();

  return (
    <React.Fragment>
      <h1>Tournament Name</h1>
      <h2 className="mt-4">Top Teams</h2>
      
      <Table>
        <thead>
          <tr>
            <th></th>
            <th>School</th>
            <th>Record</th>
            <th>CS</th>
            <th>OCS</th>
            <th>PD</th>
          </tr>
        </thead>
      </Table>
      <TournamentResultTable id={parseInt(id)} />
    </React.Fragment>
  );
}