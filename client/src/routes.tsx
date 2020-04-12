import * as React from 'react';
import TournamentsView from './pages/TournamentsView/TournamentsView';
import { SingleTournamentView } from './pages/SingleTournamentView/SingleTournamentView';
import { RouteProps } from 'react-router-dom';
import { StatsView } from './pages/Stats/StatsView/StatsView';
import { Superlatives } from './pages/Stats/Superlatives/Superlatives';
import { TPRGroups } from './pages/Stats/TPRGroups/TPRGroups';
import { TeamsView } from './pages/TeamsView/TeamsView';
import { CasesView } from './pages/CasesView/CasesView';
import { SingleTeamView } from './pages/SingleTeamView/SingleTeamView';

interface Route extends RouteProps {
  path: string;
}

export const routes: Route[] = [
  { path: '/tournament/:id', children: <SingleTournamentView /> },
  { path: '/tournament', children: <TournamentsView />, exact: true },
  { path: '/superlatives', children: <Superlatives /> },
  { path: '/tpr-groups', children: <TPRGroups /> },
  { path: '/stats', children: <StatsView />, exact: true },
  { path: '/teams/:teamNum', children: <SingleTeamView /> }
  { path: '/teams', children: <TeamsView />, exact: true },
  { path: '/cases', children: <CasesView /> }
]