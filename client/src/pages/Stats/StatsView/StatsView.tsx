import * as React from 'react';
import { Card, Jumbotron, Row, Col } from 'reactstrap';

import './StatsView.scss';
import { Link } from 'react-router-dom';

export const StatsView: React.FC = () => {
  return (
    <React.Fragment>
      <h1>Stats</h1>
      <Link to="/stats/tpr-group">
        <Jumbotron className="stats-category">
          <h1 className="display-4">TPR Groups</h1>
          <img src="/assets/tab-image.png" />
          <p className="lead">Read more on the new TPR group designators, and see how they're affecting who gets bids</p>
        </Jumbotron>
      </Link>
      <Link to="/stats/superlatives">
        <Jumbotron className="stats-category">
          <h1 className="display-4">Superlatives</h1>
          <img src="/assets/trophies.jpg" />
          <p className="lead">Find some of the best (and worst) the last few years of mock trial has to offer</p>
        </Jumbotron>
      </Link>
      <Link to="/stats/tpr">
        <Jumbotron className="stats-category">
          <h1 className="display-4">TPR Metrics</h1>
          <img src="" />
          <p className="lead">See how teams fare based on TPR</p>
        </Jumbotron>
      </Link>
    </React.Fragment>
  )
}