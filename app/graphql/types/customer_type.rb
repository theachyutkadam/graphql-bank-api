module Types
  class CustomerType < Types::BaseObject
    # field :filter, String, null: true, default: "ASC" do
    #   description "Collect record with ASC or DESC order"
    # end

    field :id, ID, null: false do
      description "This customer's id."
    end

    field :status, Integer, null: true do
      description "This customer's status, "
    end

    field :birthdate, GraphQL::Types::ISO8601DateTime, null: true do
      description "This customer's birthdate, "
    end

    field :pan_card_number, String, null: true do
      description "This customer's pan_card_number, "
    end

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false do
      description 'The date/time that this post was last created at.'
    end

    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false do
      description 'The date/time that this post was last updated at.'
    end

    field :user, Types::UserType, null: true do
      description 'Show the user of the current customer.'
    end
  end
end
