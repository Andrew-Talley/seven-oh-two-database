import * as React from 'react';
import { useGetTournamentsViewQuery } from '../../graphql-types';
import { Link } from 'react-router-dom';
import Table, { Column } from 'react-bootstrap-table-next';
import useAxios from '@use-hooks/axios';

const COLUMNS: Column[] = [
  { dataField: 'name', text: 'Name' },
  { dataField: 'start_date', text: 'Date', formatter: (start_date, { end_date }) => (
    <span>{new Date(start_date)} - {new Date(end_date)}</span>
  )},
  { dataField: 'host', text: 'Host' },
  { dataField: 'teamCount', text: 'Size' },
  { dataField: 'averageTPR', text: 'Average TPR' }
]

const TournamentsView: React.FC = () => {
  const { response, loading, error } = useAxios({
    url: '/api/tournaments',
    trigger: 'go'
  });

  const { data } = response || {};
  console.log(data);

  return (
    <React.Fragment>
      <h1>Tournaments</h1>
      <Link to="/tournament/1">Tournament 1!</Link>
      {/* <div className="d-flex justify-content-end">
        <Button 
          color="secondary" 
          outline
          size="sm"
        >
          Show Detailed View
        </Button>
      </div> */}
      {
        loading ? "Loading..." :
        error ? error.message :
        !data ? 'Failed to low data...' :
        <Table columns={COLUMNS} data={data} keyField='id' />
      }
    </React.Fragment>
  )
}

export default TournamentsView;