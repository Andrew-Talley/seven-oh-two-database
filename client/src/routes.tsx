import * as React from 'react';
import TournamentsView from './pages/TournamentsView/TournamentsView';
import { SingleTournamentView } from './pages/SingleTournamentView/SingleTournamentView';
import { RouteProps } from 'react-router-dom';

interface Route extends RouteProps {
  path: string;
}

export const routes: Route[] = [
  { path: '/tournament/:id', children: <SingleTournamentView /> },
  { path: '/tournament', children: <TournamentsView />, exact: true },
]