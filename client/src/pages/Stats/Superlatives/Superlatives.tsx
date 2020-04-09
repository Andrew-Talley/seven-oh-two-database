import * as React from 'react';
import { ListGroup, ListGroupItem, ListGroupItemHeading, ListGroupItemText, Row, Col, Card, CardHeader, CardBody, CardTitle } from 'reactstrap';

export const Superlatives: React.FC = () => {
  return (
    <Row>
      <Col md={6}>
        <h2 className="px-2">PD Stats</h2>
        <ListGroup className="py-2">
          <ListGroupItem>
            <ListGroupItemHeading>
              Highest Single-Round PD
            </ListGroupItemHeading>
            <ListGroupItemText>
              <h3>Rhodes College</h3>
              <div className="text-muted d-flex flex-column">
                <span>Grand Ole Tournament, Nov 8, 2018</span>
                <span>R3, π vs. 1034 (Bellarmine University B)</span>
                <span>+56 (+15, +43)</span>
              </div>
            </ListGroupItemText>
          </ListGroupItem>
        </ListGroup>
        <ListGroup className="py-2">
          <ListGroupItem>
            <ListGroupItemHeading>
              Highest Single-Ballot PD
            </ListGroupItemHeading>
            <ListGroupItemText>
            <h3>Rhodes College</h3>
              <div className="text-muted d-flex flex-column">
                <span>Grand Ole Tournament, Nov 8, 2018</span>
                <span>R3, π vs. 1034 (Bellarmine University B)</span>
                <span>+76 (other ballots: +15, +43)</span>
              </div>
            </ListGroupItemText>
          </ListGroupItem>
        </ListGroup>
      </Col>
      <Col md={6}>
        <h2 className="px-2">Record Stats</h2>
        <ListGroup className="py-2">
          <ListGroupItem>
            <ListGroupItemHeading>
              Best Record at an AMTA Tournament
            </ListGroupItemHeading>
            <ListGroupItemText>
              <h3>Rhodes College</h3>
              <div className="text-muted d-flex flex-column">
                <span>Jackson Regional, 2018</span>
                <span>8-0-0 CS: 24, OCS: 184, PD: +100</span>
              </div>
            </ListGroupItemText>
          </ListGroupItem>
        </ListGroup>
        <ListGroup className="py-2">
          <ListGroupItem>
            <ListGroupItemHeading>
              Worst Record at an AMTA Tournament
            </ListGroupItemHeading>
            <ListGroupItemText>
              <h3>Bellarmine College</h3>
              <div className="text-muted d-flex flex-column">
                <span>Louisville Regional, 2017</span>
                <span>0-8-0 CS: 8, OCS: 35, PD: -124</span>
              </div>
            </ListGroupItemText>
          </ListGroupItem>
        </ListGroup>
      </Col>
    </Row>
  )
}