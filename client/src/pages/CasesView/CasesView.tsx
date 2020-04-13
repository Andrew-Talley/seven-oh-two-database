import * as React from 'react';
import useAxios from '@use-hooks/axios';
import Table, { Column } from 'react-bootstrap-table-next';
import { Link } from 'react-router-dom';

const COLUMNS: Column[] = [
  { dataField: 'caseName', text: 'Case Name', formatter: (name, { year, nationalsCase}) => (
    <Link to={`/cases/${year}/${nationalsCase === '1' ? 'nationals' : 'regionals'}`}>{name}</Link>
  ) },
  { dataField: 'year', text: 'Year', formatter: (year, { isNationals }) => (
    `${year}${isNationals === 1 ? ' (Nationals Case)' : ''}`
  ) },
  { dataField: 'caseType', text: 'Type of Charge' }
];


export const CasesView: React.FC = () => {
  const { response, loading, error } = useAxios({
    url: '/api/cases',
    trigger: 'go'
  });

  let data = response?.data;
  data = data?.filter((c: any, i: any) => data.findIndex((f: any) => c.caseName === f.caseName) === i);

  return (
    <React.Fragment>
      <h1>Case Archive</h1>
      <div>
        {
          loading ? 'Loading...' :
          error ? error.message :
          !data || typeof data !== 'object' ? "Ran into an error loading cases" :
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