module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World! this is the QueryType"
    end

    field :customers, [Types::CustomerType], null: false do
      description "Query that selects all customers."
    end
    
    field :customersCount, Integer, null: false do
      description "Query that returns the total number of customers."
    end

    def customers
      return Customer.all
    end

    def customersCount
      return Customer.count
    end
  end
end
