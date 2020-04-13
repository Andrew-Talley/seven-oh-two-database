import * as React from 'react';
import { TournamentResultTable } from "../../components/TournamentResultTable/TournamentResultTable";
import { useRouteMatch } from 'react-router-dom';
import { useGetSingleTournamentViewQuery, TournamentTeamData } from '../../graphql-types';
import useAxios from '@use-hooks/axios';

import Table, { Column } from 'react-bootstrap-table-next';
import { compareTeamData } from '../../functions/sortTeamData';
import { Row, Col } from 'reactstrap';
import { OutstandingStudentTable } from '../../components/OutstandingStudentTable/OutstandingStudentTable';


export const SingleTournamentView: React.FC = () => {
  const { id } = useRouteMatch<{ id: string }>().params;

  const { response: nameResp } = useAxios({
    url: `/api/tournaments/${id}/name`,
    trigger: id.toString()
  });

  const tournName = nameResp?.data;

  const { response, loading, error } = useAxios({
    url: `/api/tournaments/${id}/students`,
    trigger: id.toString()
  });

  const data = response?.data as any[] | null;
  const attorneys = data?.filter(s => s.role === 'Attorney');
  const witnesses = data?.filter(s => s.role === 'Witness');

  return (
    <React.Fragment>
      <h1>{tournName}</h1>
      <TournamentResultTable id={parseInt(id)} />
      {
        error ? error.message :
        loading || !response ? 'Loading individual awards...' :
        <Row>
          <Col md={6}>
            <h2>Top Attorneys</h2>
            {
              attorneys.length === 0 ? <span className="text-warning">Our script failed to find the attorneys for this tournament. We're working on improving it, so check back another time.</span> :
              <OutstandingStudentTable 
                data={attorneys} 
                showRole={false}
              />
            }
          </Col>
          <Col md={6}>
            <h2>Top Witnesses</h2>
            {
              witnesses.length === 0 ? <span className="text-warning">Our script failed to find the outstanding witnesses for this tournament. We're working on improving it, so check back later.</span> :
              <OutstandingStudentTable
                data={witnesses}
                showRole={false}
              />
            }
          </Col>
        </Row>
      }
    </React.Fragment>
  );
}