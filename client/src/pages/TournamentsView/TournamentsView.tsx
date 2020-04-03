import * as React from 'react';
import { Table, Button } from 'reactstrap';
import { useGetTournamentsViewQuery } from '../../graphql-types';
import { Link } from 'react-router-dom';

const TournamentsView: React.FC = () => {
  const { data, loading, error } = useGetTournamentsViewQuery({});

  return (
    <React.Fragment>
      <h1 className="mt-4">Tournaments</h1>
      <Link to="/tournament/1">Tournament 1!</Link>
      {/* <div className="d-flex justify-content-end">
        <Button 
          color="secondary" 
          outline
          size="sm"
        >
          Show Detailed View
        </Button>
      </div> */}
      {
        loading ? "Loading..." :
        error ? error.message :
        <Table>
          <thead>
            <tr>
              <th scope="col">Name</th>
              <th scope="col">Date</th>
              <th scope="col">Host</th>
              <th scope="col">Size</th>
              <th scope="col">Average TPR</th>
            </tr>
          </thead>
          <tbody>
            {data.allTournaments.map(tournament => {
              const dateString = (
                tournament.start && tournament.end ?
                  tournament.start + tournament.end :
                  'Unknown'
              );

              return (
                <tr key={tournament.id}>
                  <th scope="row">{tournament.name}</th>
                  <th scope="row">{dateString}</th>
                  <th scope="row">{tournament.host || 'Unknown'}</th>
                  <th scope="row">{tournament.teams.length}</th>
                  <th scope="row">{tournament.averageTPR}</th>
                </tr>
              );
            })}
          </tbody>
        </Table>
      }
    </React.Fragment>
  )
}

export default TournamentsView;