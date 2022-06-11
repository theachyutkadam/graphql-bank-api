module Types
  class QueryType < Types::BaseObject
<<<<<<< HEAD
=======
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

>>>>>>> develop
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
<<<<<<< HEAD
                               description: 'An example field added by the generator'
    def test_field
      'Hello World! this is the QueryType'
    end

    field :customers, [Types::CustomerType], null: false do
      description 'Query that selects all customers.'
    end

    field :customersCount, Integer, null: false do
      description 'Query that returns the total number of customers.'
    end

    def customers
      Customer.all
    end

    def customersCount
      Customer.count
=======
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
>>>>>>> develop
    end
  end
end
