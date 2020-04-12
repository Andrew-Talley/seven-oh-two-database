import * as React from 'react';
import { useRouteMatch } from 'react-router-dom';
import Table, { Column } from 'react-bootstrap-table-next';
import { Button } from 'reactstrap';
import useAxios from '@use-hooks/axios';

const COLUMNS: Column[] = [
  { dataField: 'name', text: 'Name', formatter: (name, { affidaivit }) => (
    <Button
      color="link"
      tag="a"
      href={affidaivit}
      target="_BLANK"
      className="p-0"
    >
      {name}
    </Button>
  ) },
  { dataField: 'side', text: 'Side' },
  { dataField: 'type', text: 'Witness Type' }
]

export const SingleCaseView: React.FC = () => {
  const { params } = useRouteMatch<{ year: string, level: string }>();

  const { response, loading, error } = useAxios({
    url: `/api/case`,
    options: {
      params
    },
    trigger: `${params.year}-${params.level}`
  });

  const data = response?.data?.[0];
  const name = data?.caseName;
  const components = data?.details.components as any[];
  const charges = components?.map(c => c.charge).filter(c => c);
  const exhibits = components?.map(c => c.exhibit).filter(e => e.exhibit_name);
  const witnesses = components?.map(c => c.witness).filter(w => w.name);
  console.log(components);

  return (
    <React.Fragment>
        {
          loading ? 'Loading...' :
          error ? error.message :
          data === undefined ? null :
          <React.Fragment>
            <h1>{name}</h1>
            <div>
              <h2>Charges:</h2>
              <ol>
                {charges.map((c, i) => (
                  <li key={i}>{c}</li>
                ))}
              </ol>
            </div>
            <div>
              <h2>Witnesses:</h2>
              <Table
                keyField='affidaivit'
                columns={COLUMNS}
                data={witnesses}
              />
            </div>
            <div>
              <h2>Exhibits:</h2>
              <ol>
                {exhibits.map((e, i) => (
                  <li key={i}>
                    <Button
                      tag="a"
                      href={e.exhibit_url}
                      target="_BLANK"
                      className="p-0"
                    >
                      {e.exhibit_name}
                    </Button>
                  </li>
                ))}
              </ol>
            </div>
          </React.Fragment>
        }
    </React.Fragment>
  )
}