import * as React from 'react';
import TournamentsView from './pages/TournamentsView/TournamentsView';
import { SingleTournamentView } from './pages/SingleTournamentView/SingleTournamentView';
import { RouteProps } from 'react-router-dom';
import { StatsView } from './pages/Stats/StatsView/StatsView';
import { Superlatives } from './pages/Stats/Superlatives/Superlatives';
import { TPRGroups } from './pages/Stats/TPRGroups/TPRGroups';

interface Route extends RouteProps {
  path: string;
}

export const routes: Route[] = [
  { path: '/tournament/:id', children: <SingleTournamentView /> },
  { path: '/tournament', children: <TournamentsView />, exact: true },
  { path: '/superlatives', children: <Superlatives /> },
  { path: '/tpr-groups', children: <TPRGroups /> },
  { path: '/stats', children: <StatsView />, exact: true }
]