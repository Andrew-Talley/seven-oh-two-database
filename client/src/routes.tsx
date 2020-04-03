import TournamentsView from './pages/TournamentsView/TournamentsView';
import { SingleTournamentView } from './pages/SingleTournamentView/SingleTournamentView';

interface Route {
  path: string;
  component: any;
}

export const routes: Route[] = [
  { path: '/tournament/:id', component: SingleTournamentView },
  { path: '/tournament', component: TournamentsView },
]