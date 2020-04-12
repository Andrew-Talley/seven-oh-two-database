import * as React from 'react';
import useAxios from '@use-hooks/axios';
import Table, { Column } from 'react-bootstrap-table-next';
import { Link } from 'react-router-dom';

const COLUMNS: Column[] = [
  { dataField: 'caseName', text: 'Case Name', formatter: name => (
    <Link to={`/cases/${name}`}>{name}</Link>
  ) },
  { dataField: 'year', text: 'Year', formatter: (year, { nationalsCase }) => (
    `${year}${nationalsCase && ' (Nationals Case)'}`
  ) },
  { dataField: 'typeCharge', text: 'Type of Charge' }
];


export const CasesView: React.FC = () => {
  const { response, loading, error } = useAxios({
    url: '/api/cases',
    trigger: ''
  });

  const data = response?.data;

  return (
    <React.Fragment>
      <h1>Old Cases</h1>
      <div>
        {
          loading ? 'Loading...' :
          error ? error.message :
          !data || data. ? "Ran into an error loading cases" :
          <Table
            keyField="caseName"
            columns={COLUMNS}
            data={data}
          />
        }
      </div>
    </React.Fragment>
  )
}