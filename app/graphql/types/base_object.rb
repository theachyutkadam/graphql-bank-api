module Types
  class BaseObject < GraphQL::Schema::Object
<<<<<<< HEAD
=======
    edge_type_class(Types::BaseEdge)
    connection_type_class(Types::BaseConnection)
>>>>>>> develop
    field_class Types::BaseField
  end
end
