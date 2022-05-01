module Types
  class CustomerType < Types::BaseObject
    field :id, ID, null: false
    field :status, Integer, null: true
    field :birthdate, GraphQL::Types::ISO8601DateTime, null: true
    field :pan_card_number, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
