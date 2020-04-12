import * as React from 'react';
import { TournamentResultTable } from "../../components/TournamentResultTable/TournamentResultTable";
import { useRouteMatch } from 'react-router-dom';
import { useGetSingleTournamentViewQuery, TournamentTeamData } from '../../graphql-types';
import useAxios from '@use-hooks/axios';

import Table, { Column } from 'react-bootstrap-table-next';
import { compareTeamData } from '../../functions/sortTeamData';
import { Row, Col } from 'reactstrap';


export const SingleTournamentView: React.FC = () => {
  const { id } = useRouteMatch<{ id: string }>().params;

  const { response, loading, error } = useAxios({
    url: `/api/tournaments/${id}/students`,
    trigger: id.toString()
  });


  return (
    <React.Fragment>
      <h1>Tournament Name</h1>
      <TournamentResultTable id={parseInt(id)} />
      <Row>
        <Col md={6}>
          <h2>Top Attorneys</h2>
        </Col>
        <Col md={6}>
          <h2></h2>
        </Col>
      </Row>
    </React.Fragment>
  );
}