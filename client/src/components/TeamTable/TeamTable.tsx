import * as React from 'react';

import Table, { Column } from 'react-bootstrap-table-next';

const COLUMNS: Column[] = [
  { dataField: 'teamNum', text: 'Team #' },
  { dataField: 'teamName', text: 'Team Name' },
  { dataField: 'tprRank', text: 'TPR Rank' },
  { dataField: 'tprPts', text: 'TPR Points' }
];

type Props = {
  data: Record<string, any>[]
};

export const TeamTable: React.FC<Props> = ({ data }) => {
  return (
    <Table 
      keyField={'teamNum'}
      columns={COLUMNS}
      data={data}
    />
  )
}