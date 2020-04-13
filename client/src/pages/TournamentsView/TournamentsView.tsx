import * as React from 'react';
import { useGetTournamentsViewQuery } from '../../graphql-types';
import { Link } from 'react-router-dom';
import Table, { Column } from 'react-bootstrap-table-next';
import useAxios from '@use-hooks/axios';

const COLUMNS: Column[] = [
  { dataField: 'name', text: 'Name', formatter: (name, { tournament_id, division }) => (
    <Link to={`/tournament/${tournament_id}`}>{name}{division ? ' - ' + division: ''}</Link>  
  )},
  { 
    dataField: 'start_date', 
    text: 'Date', 
    sort: true, 
    sortFunc: ((a, b, order) => (
      (new Date(a) > new Date(b) ? 1 : -1) * (order === 'desc' ? 1 : -1)
    )),
    formatter: (start_date, { end_date }) => {
    const [start, end] = [new Date(start_date), new Date(end_date)];
    const formatter = new Intl.DateTimeFormat('en', {
      year: 'numeric',
      month: 'short',
      day: 'numeric'
    });
    const [start_string, end_string] = [start, end].map(d => formatter.format(d));
    return (<span>{start_string} - {end_string}</span>)
  }, },
  { dataField: 'host', text: 'Host' },
  { dataField: 'level', text: 'Level', formatter: cell => (
    <span style={{ 
      textTransform: (cell === 'orcs' ? 'uppercase' : 'capitalize') 
    }}>
      {cell}
    </span>
  )},
  { dataField: 'teamCount', text: 'Size' },
  { dataField: 'avgPoints', text: 'Average TPR', formatter: tpr => parseFloat(tpr).toFixed(3) }
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
      {
        loading ? "Loading..." :
        error ? error.message :
        !data ? 'Failed to low data...' :
        <Table 
          columns={COLUMNS} 
          data={data} 
          keyField='id'
          defaultSorted={[{
            dataField: 'date',
            order: 'desc'
          }]}
        />
      }
    </React.Fragment>
  )
}

export default TournamentsView;