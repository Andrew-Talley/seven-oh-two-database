import * as React from 'react';
import { TournamentResultTable } from "../../components/TournamentResultTable/TournamentResultTable";
import { useRouteMatch } from 'react-router-dom';
import { useGetSingleTournamentViewQuery, TournamentTeamData } from '../../graphql-types';
import useAxios from '@use-hooks/axios';

import Table, { Column } from 'react-bootstrap-table-next';
import { compareTeamData } from '../../functions/sortTeamData';
import { Row, Col } from 'reactstrap';
import { OutstandingStudentTable } from '../../components/OutstandingStudentTable/OutstandingStudentTable';

const format = Intl.DateTimeFormat('en-us', {
  year: 'numeric',
  month: 'short',
  day: 'numeric'
});

export const SingleTournamentView: React.FC = () => {
  const { id } = useRouteMatch<{ id: string }>().params;

  const { response: dataResp } = useAxios({
    url: `/api/tournaments/${id}/info`,
    trigger: id.toString()
  });

  const tournData = dataResp?.data;

  const { response, loading, error } = useAxios({
    url: `/api/tournaments/${id}/students`,
    trigger: id.toString()
  });

  const data = response?.data as any[] | null;
  const attorneys = data?.filter(s => s.role === 'Attorney');
  const witnesses = data?.filter(s => s.role === 'Witness');

  return (
    <React.Fragment>
      <h1>{tournData?.tournament_name}</h1>
      {
        tournData?.host &&
        <h2>Hosted by {tournData.host}{tournData.location && ` at ${tournData.location}`}</h2>
      }
      {
        tournData?.start_date && tournData?.end_date &&
        <h3>{format.format(new Date(tournData.start_date))} - {format.format(new Date(tournData.end_date))}</h3>
      }
      <TournamentResultTable year={tournData?.year} id={parseInt(id)} />
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
      {
        tournData?.amtaReps && 
        <React.Fragment>
          <h3>AMTA Representatives</h3>
          {tournData.amtaReps.map((r: any) => (
            <p key={r.id}>{r.amta_rep}</p>
          ))}
        </React.Fragment>
      }
    </React.Fragment>
  );
}