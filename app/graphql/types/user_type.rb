module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :user_name, String, null: true
    field :password, String, null: true
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :contact, String, null: true
    field :address, String, null: true
    field :gender, String, null: true
    field :role_id, Integer, null: false
    field :status, Integer, null: true
    field :information_type, String, null: false
    field :information_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
