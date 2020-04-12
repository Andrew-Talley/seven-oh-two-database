import * as React from 'react';
import { ListGroup, ListGroupItem, ListGroupItemHeading, ListGroupItemText } from 'reactstrap';

interface StatPanelProps {
  heading: React.ReactNode;
  body: React.ReactNode;
}
export const StatPanel: React.FC<StatPanelProps> = ({ heading, body }) => (
  <ListGroup className="py-2">
    <ListGroupItem>
      <ListGroupItemHeading>
        {heading}
      </ListGroupItemHeading>
      <ListGroupItemText tag="div">
        {body}
      </ListGroupItemText>
    </ListGroupItem>
  </ListGroup>
);