import * as React from 'react';

import Table, { Column } from 'react-bootstrap-table-next';
import { Link } from 'react-router-dom';

const YearContext = React.createContext(2020);

const COLUMNS: Column[] = [
  { dataField: 'teamNum', text: 'Team #', formatter: num => (
    <YearContext.Consumer>
      {year => (
        <Link to={`/teams/${year}/${num}`}>{num}</Link>
      )}
    </YearContext.Consumer>
  ) },
  { dataField: 'teamName', text: 'Team Name', formatter: (name, { teamNum }) => (
    <YearContext.Consumer>
      {year => (
        <Link to={`/teams/${year}/${teamNum}`}>{name}</Link>
      )}
    </YearContext.Consumer>
  ) },
  { dataField: 'tprRank', text: 'TPR Rank' },
  { dataField: 'tprPoints', text: 'TPR Points' }
];

type Props = {
  data: Record<string, any>[];
  year: number;
};

export const TeamTable: React.FC<Props> = ({ data, year }) => {
  return (
    <YearContext.Provider value={year}>
      <Table 
        classes={["table-sm"]}
        keyField={'teamNum'}
        columns={COLUMNS}
        data={data}
      />
    </YearContext.Provider>
  )
}