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


export type Query = {
   __typename?: 'Query';
  allTournaments: Array<Tournament>;
};

export type Tournament = {
   __typename?: 'Tournament';
  id: Scalars['Int'];
  name: Scalars['String'];
  start?: Maybe<Scalars['Date']>;
  end?: Maybe<Scalars['Date']>;
  host?: Maybe<Scalars['String']>;
  size?: Maybe<Scalars['Int']>;
  case: Case;
  averageTPR?: Maybe<Scalars['Float']>;
};

export type GetTournamentsViewQueryVariables = {};


export type GetTournamentsViewQuery = (
  { __typename?: 'Query' }
  & { allTournaments: Array<(
    { __typename?: 'Tournament' }
    & Pick<Tournament, 'id' | 'name' | 'start' | 'end' | 'host' | 'size' | 'averageTPR'>
  )> }
);


export const GetTournamentsViewDocument = gql`
    query getTournamentsView {
  allTournaments {
    id
    name
    start
    end
    host
    size
    averageTPR
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