import * as React from 'react';

import Table, { Column } from 'react-bootstrap-table-next';
import { Link } from 'react-router-dom';
import ToolkitProvider from 'react-bootstrap-table2-toolkit';
import { SearchBar } from '../SearchBar/SearchBar';

const YearContext = React.createContext(2020);

const COLUMNS: Column[] = [
  { dataField: 'teamNum', text: 'Team #', sort: true, formatter: num => (
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
      <ToolkitProvider
        classes={["table-sm"]}
        keyField={'teamNum'}
        columns={COLUMNS}
        data={data}
      >
        {(props: any) => (
          <React.Fragment>
            <SearchBar 
              {...props.searchProps}
              placeholder="Search for teams..."
            />
            <Table {...props.baseProps} />
          </React.Fragment>
        )}
      </ToolkitProvider>
    </YearContext.Provider>
  )
}