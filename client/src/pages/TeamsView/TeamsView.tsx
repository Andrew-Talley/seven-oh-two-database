import * as React from 'react';
import { TeamTable } from '../../components/TeamTable/TeamTable';
import useAxios from '@use-hooks/axios';
import { ButtonGroup, Button } from 'reactstrap';

const YEARS = [2014, 2015, 2016, 2017, 2018, 2019, 2020];

export const TeamsView: React.FC = () => {
  const [activeYear, setActiveYear] = React.useState(2020);
  
  const { response, loading, error } = useAxios({
    url: '/api/teams',
    options: {
      params: {
        year: activeYear
      }
    },
    trigger: activeYear.toString()
  });

  const data = response?.data;
  console.log(data);

  return (
    <React.Fragment>
      <h1>All Teams</h1>
      <div>
        <ButtonGroup>
          {YEARS.map(y => (
            <Button 
              key={y}
              active={activeYear === y}
              onClick={() => setActiveYear(y)}
            >
              {y}
            </Button>
          ))}
        </ButtonGroup>
      </div>
      {
        loading ? <span>Loading...</span> :
        error ? <span className="text-danger">{error.message}</span> :
        !data || typeof(data) !== 'object' ? <span className="text-danger">Error while loading teams</span> :
        <TeamTable data={data} year={activeYear} />
      }
    </React.Fragment>
  );
}