import { GraphQLResolveInfo, GraphQLScalarType, GraphQLScalarTypeConfig } from 'graphql';
export type Maybe<T> = T | null;
export type RequireFields<T, K extends keyof T> = { [X in Exclude<keyof T, K>]?: T[X] } & { [P in K]-?: NonNullable<T[P]> };
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: string;
  String: string;
  Boolean: boolean;
  Int: number;
  Float: number;
  Date: any;
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

export type Matchup = {
   __typename?: 'Matchup';
  pl: Team;
  def: Team;
  pds: Array<Scalars['Int']>;
};

export type Team = {
   __typename?: 'Team';
  year: Scalars['Int'];
  name: Scalars['String'];
  num: Scalars['Int'];
};

export type Case = {
   __typename?: 'Case';
  caseName: Scalars['String'];
  year: Scalars['Int'];
  caseType: Scalars['String'];
  exhibits: Array<Exhibit>;
  charges: Array<Scalars['String']>;
  witnesses: Array<Witness>;
};

export type Exhibit = {
   __typename?: 'Exhibit';
  name: Scalars['String'];
  exhibit_url: Scalars['String'];
};

export type Witness = {
   __typename?: 'Witness';
  name: Scalars['String'];
  side: Scalars['String'];
  type: Scalars['String'];
};

export type Query = {
   __typename?: 'Query';
  tournaments: Array<Tournament>;
  tournament?: Maybe<Tournament>;
  cases: Array<Case>;
};


export type QueryTournamentArgs = {
  tournamentId?: Maybe<Scalars['Int']>;
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
        & Pick<Team, 'num' | 'name'>
      ) }
    )> }
  )> }
);



export type ResolverTypeWrapper<T> = Promise<T> | T;


export type StitchingResolver<TResult, TParent, TContext, TArgs> = {
  fragment: string;
  resolve: ResolverFn<TResult, TParent, TContext, TArgs>;
};

export type Resolver<TResult, TParent = {}, TContext = {}, TArgs = {}> =
  | ResolverFn<TResult, TParent, TContext, TArgs>
  | StitchingResolver<TResult, TParent, TContext, TArgs>;

export type ResolverFn<TResult, TParent, TContext, TArgs> = (
  parent: TParent,
  args: TArgs,
  context: TContext,
  info: GraphQLResolveInfo
) => Promise<TResult> | TResult;

export type SubscriptionSubscribeFn<TResult, TParent, TContext, TArgs> = (
  parent: TParent,
  args: TArgs,
  context: TContext,
  info: GraphQLResolveInfo
) => AsyncIterator<TResult> | Promise<AsyncIterator<TResult>>;

export type SubscriptionResolveFn<TResult, TParent, TContext, TArgs> = (
  parent: TParent,
  args: TArgs,
  context: TContext,
  info: GraphQLResolveInfo
) => TResult | Promise<TResult>;

export interface SubscriptionSubscriberObject<TResult, TKey extends string, TParent, TContext, TArgs> {
  subscribe: SubscriptionSubscribeFn<{ [key in TKey]: TResult }, TParent, TContext, TArgs>;
  resolve?: SubscriptionResolveFn<TResult, { [key in TKey]: TResult }, TContext, TArgs>;
}

export interface SubscriptionResolverObject<TResult, TParent, TContext, TArgs> {
  subscribe: SubscriptionSubscribeFn<any, TParent, TContext, TArgs>;
  resolve: SubscriptionResolveFn<TResult, any, TContext, TArgs>;
}

export type SubscriptionObject<TResult, TKey extends string, TParent, TContext, TArgs> =
  | SubscriptionSubscriberObject<TResult, TKey, TParent, TContext, TArgs>
  | SubscriptionResolverObject<TResult, TParent, TContext, TArgs>;

export type SubscriptionResolver<TResult, TKey extends string, TParent = {}, TContext = {}, TArgs = {}> =
  | ((...args: any[]) => SubscriptionObject<TResult, TKey, TParent, TContext, TArgs>)
  | SubscriptionObject<TResult, TKey, TParent, TContext, TArgs>;

export type TypeResolveFn<TTypes, TParent = {}, TContext = {}> = (
  parent: TParent,
  context: TContext,
  info: GraphQLResolveInfo
) => Maybe<TTypes> | Promise<Maybe<TTypes>>;

export type isTypeOfResolverFn<T = {}> = (obj: T, info: GraphQLResolveInfo) => boolean | Promise<boolean>;

export type NextResolverFn<T> = () => Promise<T>;

export type DirectiveResolverFn<TResult = {}, TParent = {}, TContext = {}, TArgs = {}> = (
  next: NextResolverFn<TResult>,
  parent: TParent,
  args: TArgs,
  context: TContext,
  info: GraphQLResolveInfo
) => TResult | Promise<TResult>;

/** Mapping between all available schema types and the resolvers types */
export type ResolversTypes = {
  String: ResolverTypeWrapper<Scalars['String']>,
  Boolean: ResolverTypeWrapper<Scalars['Boolean']>,
  Date: ResolverTypeWrapper<Scalars['Date']>,
  Tournament: ResolverTypeWrapper<Tournament>,
  Int: ResolverTypeWrapper<Scalars['Int']>,
  Float: ResolverTypeWrapper<Scalars['Float']>,
  TournamentTeamData: ResolverTypeWrapper<TournamentTeamData>,
  Matchup: ResolverTypeWrapper<Matchup>,
  Team: ResolverTypeWrapper<Team>,
  Case: ResolverTypeWrapper<Case>,
  Exhibit: ResolverTypeWrapper<Exhibit>,
  Witness: ResolverTypeWrapper<Witness>,
  Query: ResolverTypeWrapper<{}>,
};

/** Mapping between all available schema types and the resolvers parents */
export type ResolversParentTypes = {
  String: Scalars['String'],
  Boolean: Scalars['Boolean'],
  Date: Scalars['Date'],
  Tournament: Tournament,
  Int: Scalars['Int'],
  Float: Scalars['Float'],
  TournamentTeamData: TournamentTeamData,
  Matchup: Matchup,
  Team: Team,
  Case: Case,
  Exhibit: Exhibit,
  Witness: Witness,
  Query: {},
};

export interface DateScalarConfig extends GraphQLScalarTypeConfig<ResolversTypes['Date'], any> {
  name: 'Date'
}

export type TournamentResolvers<ContextType = any, ParentType extends ResolversParentTypes['Tournament'] = ResolversParentTypes['Tournament']> = {
  id?: Resolver<ResolversTypes['Int'], ParentType, ContextType>,
  name?: Resolver<ResolversTypes['String'], ParentType, ContextType>,
  start?: Resolver<Maybe<ResolversTypes['Date']>, ParentType, ContextType>,
  end?: Resolver<Maybe<ResolversTypes['Date']>, ParentType, ContextType>,
  host?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>,
  teams?: Resolver<Array<ResolversTypes['TournamentTeamData']>, ParentType, ContextType>,
  case?: Resolver<ResolversTypes['Case'], ParentType, ContextType>,
  averageTPR?: Resolver<Maybe<ResolversTypes['Float']>, ParentType, ContextType>,
  __isTypeOf?: isTypeOfResolverFn<ParentType>,
};

export type TournamentTeamDataResolvers<ContextType = any, ParentType extends ResolversParentTypes['TournamentTeamData'] = ResolversParentTypes['TournamentTeamData']> = {
  tournament?: Resolver<ResolversTypes['Tournament'], ParentType, ContextType>,
  team?: Resolver<ResolversTypes['Team'], ParentType, ContextType>,
  wins?: Resolver<ResolversTypes['Int'], ParentType, ContextType>,
  ties?: Resolver<ResolversTypes['Int'], ParentType, ContextType>,
  losses?: Resolver<ResolversTypes['Int'], ParentType, ContextType>,
  totalPD?: Resolver<ResolversTypes['Int'], ParentType, ContextType>,
  totalCS?: Resolver<ResolversTypes['Int'], ParentType, ContextType>,
  totalOCS?: Resolver<ResolversTypes['Int'], ParentType, ContextType>,
  matchups?: Resolver<Array<ResolversTypes['Matchup']>, ParentType, ContextType>,
  __isTypeOf?: isTypeOfResolverFn<ParentType>,
};

export type MatchupResolvers<ContextType = any, ParentType extends ResolversParentTypes['Matchup'] = ResolversParentTypes['Matchup']> = {
  pl?: Resolver<ResolversTypes['Team'], ParentType, ContextType>,
  def?: Resolver<ResolversTypes['Team'], ParentType, ContextType>,
  pds?: Resolver<Array<ResolversTypes['Int']>, ParentType, ContextType>,
  __isTypeOf?: isTypeOfResolverFn<ParentType>,
};

export type TeamResolvers<ContextType = any, ParentType extends ResolversParentTypes['Team'] = ResolversParentTypes['Team']> = {
  year?: Resolver<ResolversTypes['Int'], ParentType, ContextType>,
  name?: Resolver<ResolversTypes['String'], ParentType, ContextType>,
  num?: Resolver<ResolversTypes['Int'], ParentType, ContextType>,
  __isTypeOf?: isTypeOfResolverFn<ParentType>,
};

export type CaseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Case'] = ResolversParentTypes['Case']> = {
  caseName?: Resolver<ResolversTypes['String'], ParentType, ContextType>,
  year?: Resolver<ResolversTypes['Int'], ParentType, ContextType>,
  caseType?: Resolver<ResolversTypes['String'], ParentType, ContextType>,
  exhibits?: Resolver<Array<ResolversTypes['Exhibit']>, ParentType, ContextType>,
  charges?: Resolver<Array<ResolversTypes['String']>, ParentType, ContextType>,
  witnesses?: Resolver<Array<ResolversTypes['Witness']>, ParentType, ContextType>,
  __isTypeOf?: isTypeOfResolverFn<ParentType>,
};

export type ExhibitResolvers<ContextType = any, ParentType extends ResolversParentTypes['Exhibit'] = ResolversParentTypes['Exhibit']> = {
  name?: Resolver<ResolversTypes['String'], ParentType, ContextType>,
  exhibit_url?: Resolver<ResolversTypes['String'], ParentType, ContextType>,
  __isTypeOf?: isTypeOfResolverFn<ParentType>,
};

export type WitnessResolvers<ContextType = any, ParentType extends ResolversParentTypes['Witness'] = ResolversParentTypes['Witness']> = {
  name?: Resolver<ResolversTypes['String'], ParentType, ContextType>,
  side?: Resolver<ResolversTypes['String'], ParentType, ContextType>,
  type?: Resolver<ResolversTypes['String'], ParentType, ContextType>,
  __isTypeOf?: isTypeOfResolverFn<ParentType>,
};

export type QueryResolvers<ContextType = any, ParentType extends ResolversParentTypes['Query'] = ResolversParentTypes['Query']> = {
  tournaments?: Resolver<Array<ResolversTypes['Tournament']>, ParentType, ContextType>,
  tournament?: Resolver<Maybe<ResolversTypes['Tournament']>, ParentType, ContextType, RequireFields<QueryTournamentArgs, never>>,
  cases?: Resolver<Array<ResolversTypes['Case']>, ParentType, ContextType>,
};

export type Resolvers<ContextType = any> = {
  Date?: GraphQLScalarType,
  Tournament?: TournamentResolvers<ContextType>,
  TournamentTeamData?: TournamentTeamDataResolvers<ContextType>,
  Matchup?: MatchupResolvers<ContextType>,
  Team?: TeamResolvers<ContextType>,
  Case?: CaseResolvers<ContextType>,
  Exhibit?: ExhibitResolvers<ContextType>,
  Witness?: WitnessResolvers<ContextType>,
  Query?: QueryResolvers<ContextType>,
};


/**
 * @deprecated
 * Use "Resolvers" root object instead. If you wish to get "IResolvers", add "typesPrefix: I" to your config.
 */
export type IResolvers<ContextType = any> = Resolvers<ContextType>;
