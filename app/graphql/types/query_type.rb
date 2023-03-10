module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :books, resolver: Queries::Books
    field :book, resolver: Queries::Book
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
  end
end
