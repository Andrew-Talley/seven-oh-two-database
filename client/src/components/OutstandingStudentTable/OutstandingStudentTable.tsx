import * as React from 'react';
import Table, { Column } from 'react-bootstrap-table-next';

const COLUMNS: Column[] = [
  { dataField: 'side', text: 'Side' },
  { dataField: 'student_name', text: 'Name' },
  { dataField: 'ranks', text: 'Ranks', sort: true }
]

const TEAM_NAME_COLUMN: Column = {
  dataField: 'team_name',
  text: 'Team',
  formatter: (team, { team_num }) => `${team} (${team_num})`
};
const ROLE_COLUMN: Column = { 
  dataField: 'role', 
  text: 'Role' 
};


interface Props {
  data: any[];
  showSchool?: boolean;
  showRole?: boolean;
}
export const OutstandingStudentTable: React.FC<Props> = ({ data, showSchool = true, showRole = true }) => {
  const columns = [...COLUMNS];
  if (showRole) {
    columns.splice(2, 0, ROLE_COLUMN);
  }
  if (showSchool) {
    columns.splice(2, 0, TEAM_NAME_COLUMN);
  }
  return (
    <Table
      keyField='student'
      columns={columns}
      data={data}
      defaultSorted={[{
        dataField: 'ranks',
        order: 'desc'
      }]}
    />
  )
}