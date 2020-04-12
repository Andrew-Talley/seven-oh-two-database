import * as React from 'react';
import { ListGroup, ListGroupItem, ListGroupItemHeading, ListGroupItemText, Row, Col, Card, CardHeader, CardBody, CardTitle } from 'reactstrap';
import useAxios from '@use-hooks/axios';
import { BestRoundPD } from '../../../components/BestRoundPD/BestRoundPD';
import { BestBallotPD } from '../../../components/BestBallotPD/BestBallotPD';
import { ExtremeRecord } from '../../../components/ExtremeRecord/ExtremeRecord';
import { StatPanel } from '../../../components/StatPanel/StatPanel';

export const Superlatives: React.FC = () => {
  const { response, loading, error } = useAxios({
    url: '/api/stats/extremerecords',
    trigger: 'go'
  });

  const data = response?.data as any[];
  const best = data?.find(r => r.type === 'best');
  const worst = data?.find(r => r.type === 'worst');
  console.log(data);
  console.log([best, worst]);

  return (
    <React.Fragment>
      <h1 className="display-4">Superlatives</h1>
      <Row>
        <Col md={6}>
          <h2 className="px-2">PD Stats</h2>
          <BestRoundPD />
          <BestBallotPD />
        </Col>
        <Col md={6}>
          <h2 className="px-2">Record Stats</h2>
          <StatPanel
            heading="Best Record at an AMTA Tournament"
            body={
              error ? <span className="text-danger">{error.message}</span> :
              loading || !best ? 'Loading...' :
              <ExtremeRecord {...best} />
            }
          />
          <StatPanel
            heading="Worst Record at an AMTA Tournament"
            body={
              error ? <span className="text-danger">{error.message}</span> :
              loading || !worst ? 'Loading...' :
              <ExtremeRecord {...worst} />
            }
          />
        </Col>
      </Row>
    </React.Fragment>
  )
}