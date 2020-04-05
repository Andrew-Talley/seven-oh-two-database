import gql from 'graphql-tag';
import * as ApolloReactCommon from '@apollo/client';
import * as ApolloReactHooks from '@apollo/client';
export type Maybe<T> = T | null;
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: string;
  String: string;
  Boolean: boolean;
  Int: number;
  Float: number;
  Date: any;
};

export type Case = {
   __typename?: 'Case';
  id: Scalars['Int'];
};


export type Matchup = {
   __typename?: 'Matchup';
  pl: Team;
  def: Team;
  pds: Array<Scalars['Int']>;
};

export type Query = {
   __typename?: 'Query';
  allTournaments: Array<Tournament>;
  tournament?: Maybe<Tournament>;
};


export type QueryTournamentArgs = {
  tournamentId?: Maybe<Scalars['Int']>;
};

export type Team = {
   __typename?: 'Team';
  year: Scalars['Int'];
  name: Scalars['String'];
  num: Scalars['Int'];
};

export type Tournament = {
   __typename?: 'Tournament';
  id: Scalars['Int'];
  name: Scalars['String'];
  start?: Maybe<Scalars['Date']>;
  end?: Maybe<Scalars['Date']>;
  host?: Maybe<Scalars['String']>;
  teams: Array<TournamentTeamData>;
  case: Case;
  averageTPR?: Maybe<Scalars['Float']>;
};

export type TournamentTeamData = {
   __typename?: 'TournamentTeamData';
  tournament: Tournament;
  team: Team;
  wins: Scalars['Int'];
  ties: Scalars['Int'];
  losses: Scalars['Int'];
  totalPD: Scalars['Int'];
  totalCS: Scalars['Int'];
  totalOCS: Scalars['Int'];
  matchups: Array<Matchup>;
};

export type GetTouranmentResultDataQueryVariables = {
  id: Scalars['Int'];
};


export type GetTouranmentResultDataQuery = (
  { __typename?: 'Query' }
  & { tournament?: Maybe<(
    { __typename?: 'Tournament' }
    & { teams: Array<(
      { __typename?: 'TournamentTeamData' }
      & Pick<TournamentTeamData, 'wins' | 'ties' | 'losses' | 'totalPD' | 'totalCS' | 'totalOCS'>
      & { team: (
        { __typename?: 'Team' }
        & Pick<Team, 'name' | 'num'>
      ), matchups: Array<(
        { __typename?: 'Matchup' }
        & Pick<Matchup, 'pds'>
        & { pl: (
          { __typename?: 'Team' }
          & Pick<Team, 'num'>
        ), def: (
          { __typename?: 'Team' }
          & Pick<Team, 'num'>
        ) }
      )> }
    )> }
  )> }
);

export type GetSingleTournamentViewQueryVariables = {
  id?: Maybe<Scalars['Int']>;
};


export type GetSingleTournamentViewQuery = (
  { __typename?: 'Query' }
  & { tournament?: Maybe<(
    { __typename?: 'Tournament' }
    & Pick<Tournament, 'name' | 'start' | 'end' | 'host'>
    & { teams: Array<(
      { __typename?: 'TournamentTeamData' }
      & Pick<TournamentTeamData, 'wins' | 'ties' | 'losses' | 'totalCS' | 'totalOCS' | 'totalPD'>
      & { team: (
        { __typename?: 'Team' }
        & Pick<Team, 'num'>
      ) }
    )> }
  )> }
);

export type GetTournamentsViewQueryVariables = {};


export type GetTournamentsViewQuery = (
  { __typename?: 'Query' }
  & { allTournaments: Array<(
    { __typename?: 'Tournament' }
    & Pick<Tournament, 'id' | 'name' | 'start' | 'end' | 'host' | 'averageTPR'>
    & { teams: Array<(
      { __typename?: 'TournamentTeamData' }
      & { team: (
        { __typename?: 'Team' }
        & Pick<Team, 'num'>
      ) }
    )> }
  )> }
);


export const GetTouranmentResultDataDocument = gql`
    query getTouranmentResultData($id: Int!) {
  tournament(tournamentId: $id) {
    teams {
      team {
        name
        num
      }
      wins
      ties
      losses
      totalPD
      totalCS
      totalOCS
      matchups {
        pl {
          num
        }
        def {
          num
        }
        pds
      }
    }
  }
}
    `;

/**
 * __useGetTouranmentResultDataQuery__
 *
 * To run a query within a React component, call `useGetTouranmentResultDataQuery` and pass it any options that fit your needs.
 * When your component renders, `useGetTouranmentResultDataQuery` returns an object from Apollo Client that contains loading, error, and data properties 
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useGetTouranmentResultDataQuery({
 *   variables: {
 *      id: // value for 'id'
 *   },
 * });
 */
export function useGetTouranmentResultDataQuery(baseOptions?: ApolloReactHooks.QueryHookOptions<GetTouranmentResultDataQuery, GetTouranmentResultDataQueryVariables>) {
        return ApolloReactHooks.useQuery<GetTouranmentResultDataQuery, GetTouranmentResultDataQueryVariables>(GetTouranmentResultDataDocument, baseOptions);
      }
export function useGetTouranmentResultDataLazyQuery(baseOptions?: ApolloReactHooks.LazyQueryHookOptions<GetTouranmentResultDataQuery, GetTouranmentResultDataQueryVariables>) {
          return ApolloReactHooks.useLazyQuery<GetTouranmentResultDataQuery, GetTouranmentResultDataQueryVariables>(GetTouranmentResultDataDocument, baseOptions);
        }
export type GetTouranmentResultDataQueryHookResult = ReturnType<typeof useGetTouranmentResultDataQuery>;
export type GetTouranmentResultDataLazyQueryHookResult = ReturnType<typeof useGetTouranmentResultDataLazyQuery>;
export type GetTouranmentResultDataQueryResult = ApolloReactCommon.QueryResult<GetTouranmentResultDataQuery, GetTouranmentResultDataQueryVariables>;
export const GetSingleTournamentViewDocument = gql`
    query getSingleTournamentView($id: Int) {
  tournament(tournamentId: $id) {
    name
    start
    end
    host
    teams {
      team {
        num
      }
      wins
      ties
      losses
      totalCS
      totalOCS
      totalPD
    }
  }
}
    `;

/**
 * __useGetSingleTournamentViewQuery__
 *
 * To run a query within a React component, call `useGetSingleTournamentViewQuery` and pass it any options that fit your needs.
 * When your component renders, `useGetSingleTournamentViewQuery` returns an object from Apollo Client that contains loading, error, and data properties 
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useGetSingleTournamentViewQuery({
 *   variables: {
 *      id: // value for 'id'
 *   },
 * });
 */
export function useGetSingleTournamentViewQuery(baseOptions?: ApolloReactHooks.QueryHookOptions<GetSingleTournamentViewQuery, GetSingleTournamentViewQueryVariables>) {
        return ApolloReactHooks.useQuery<GetSingleTournamentViewQuery, GetSingleTournamentViewQueryVariables>(GetSingleTournamentViewDocument, baseOptions);
      }
export function useGetSingleTournamentViewLazyQuery(baseOptions?: ApolloReactHooks.LazyQueryHookOptions<GetSingleTournamentViewQuery, GetSingleTournamentViewQueryVariables>) {
          return ApolloReactHooks.useLazyQuery<GetSingleTournamentViewQuery, GetSingleTournamentViewQueryVariables>(GetSingleTournamentViewDocument, baseOptions);
        }
export type GetSingleTournamentViewQueryHookResult = ReturnType<typeof useGetSingleTournamentViewQuery>;
export type GetSingleTournamentViewLazyQueryHookResult = ReturnType<typeof useGetSingleTournamentViewLazyQuery>;
export type GetSingleTournamentViewQueryResult = ApolloReactCommon.QueryResult<GetSingleTournamentViewQuery, GetSingleTournamentViewQueryVariables>;
export const GetTournamentsViewDocument = gql`
    query getTournamentsView {
  allTournaments {
    id
    name
    start
    end
    host
    averageTPR
    teams {
      team {
        num
      }
    }
  }
}
    `;

/**
 * __useGetTournamentsViewQuery__
 *
 * To run a query within a React component, call `useGetTournamentsViewQuery` and pass it any options that fit your needs.
 * When your component renders, `useGetTournamentsViewQuery` returns an object from Apollo Client that contains loading, error, and data properties 
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useGetTournamentsViewQuery({
 *   variables: {
 *   },
 * });
 */
export function useGetTournamentsViewQuery(baseOptions?: ApolloReactHooks.QueryHookOptions<GetTournamentsViewQuery, GetTournamentsViewQueryVariables>) {
        return ApolloReactHooks.useQuery<GetTournamentsViewQuery, GetTournamentsViewQueryVariables>(GetTournamentsViewDocument, baseOptions);
      }
export function useGetTournamentsViewLazyQuery(baseOptions?: ApolloReactHooks.LazyQueryHookOptions<GetTournamentsViewQuery, GetTournamentsViewQueryVariables>) {
          return ApolloReactHooks.useLazyQuery<GetTournamentsViewQuery, GetTournamentsViewQueryVariables>(GetTournamentsViewDocument, baseOptions);
        }
export type GetTournamentsViewQueryHookResult = ReturnType<typeof useGetTournamentsViewQuery>;
export type GetTournamentsViewLazyQueryHookResult = ReturnType<typeof useGetTournamentsViewLazyQuery>;
export type GetTournamentsViewQueryResult = ApolloReactCommon.QueryResult<GetTournamentsViewQuery, GetTournamentsViewQueryVariables>;