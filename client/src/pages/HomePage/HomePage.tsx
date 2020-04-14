import * as React from 'react';
import { Link } from 'react-router-dom';
import { Jumbotron } from 'reactstrap';

export const HomePage: React.FC = () => {
  return (
    <React.Fragment>
      <Link to="/tournaments">
        <Jumbotron className="stats-category">
          <h1 className="display-4">Tournaments</h1>
          <img src="/assets/orcs.jpg" />
          <p className="lead">See an overview of tournaments and dive into the specific results</p>
        </Jumbotron>
      </Link>
      <Link to="/teams">
        <Jumbotron className="stats-category">
          <h1 className="display-4">Teams</h1>
          <img src="/assets/2016-yale.jpg" />
          <p className="lead">See how teams have done in past years with a tournament-by-tournament listing of their results</p>
        </Jumbotron>
      </Link>
      <Link to="/cases">
        <Jumbotron className="stats-category">
          <h1 className="display-4">Cases</h1>
          <img src="/assets/cases.png" />
          <p className="lead">Look at old cases with links to the original case documents</p>
        </Jumbotron>
      </Link>
      <Link to="/teams">
        <Jumbotron className="stats-category">
          <h1 className="display-4">Stats</h1>
          <img src="/assets/stats.png" />
          <p className="lead">Look at stats powered by our database of past records</p>
        </Jumbotron>
      </Link>
    </React.Fragment>
  );
}