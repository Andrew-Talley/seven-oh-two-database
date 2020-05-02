import { ApolloServer, gql } from 'apollo-server';
import { Resolvers } from './__generated__/graphql';
import * as fs from 'fs';

const typeDefs = gql(fs.readFileSync("../schema.graphql").toString());

const resolvers: Resolvers = {
  Query: {
    cases: () => {
      
    }
  }
}

const server = new ApolloServer({ typeDefs, resolvers });

server.listen().then(({ url }) => {
  console.log(`🚀  Server ready at ${url}`);
});