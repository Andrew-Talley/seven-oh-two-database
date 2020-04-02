import TournamentsView from './pages/TournamentsView/TournamentsView';

interface Route {
  path: string;
  component: any;
}

export const routes: Route[] = [
  { path: '/tournament', component: TournamentsView }
]