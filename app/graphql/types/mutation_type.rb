module Types
  class MutationType < Types::BaseObject
    field :create_user_mutation, mutation: Mutations::CreateUserMutation
    field :create_customer_mutation, mutation: Mutations::CreateCustomerMutation
    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An example field added by the generator'
    def test_field
      'Hello World, this is the MutationType'
    end
  end
end
