import * as React from 'react';
import { useGetTournamentsViewQuery } from "../../graphql-types";
import { TournamentResultTable } from "../../components/TournamentResultTable";

interface TournamentProps {
  id: number;
}
export const SingleTournamentView: React.FC<TournamentProps> = ({ id }) => {

  return (
    <TournamentResultTable id={id} />
  );
}