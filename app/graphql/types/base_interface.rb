module Types
  module BaseInterface
    include GraphQL::Schema::Interface
<<<<<<< HEAD
=======
    edge_type_class(Types::BaseEdge)
    connection_type_class(Types::BaseConnection)
>>>>>>> develop

    field_class Types::BaseField
  end
end
