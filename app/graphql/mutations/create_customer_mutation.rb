module Mutations
  class CreateCustomerMutation < BaseMutation
    field :customer, Types::CustomerType, null: false

    argument :status, String, required: true do
      description 'The status field.'
    end

    argument :birthdate, String, required: true do
      description "This is the customer's birthdate."
    end

    argument :pan_card_number, Integer, required: true do
      description "The id of this customer's pan_card_number."
    end

    def resolve(status:, birthdate:, pan_card_number:)
      @customer = Customer.new(status: status, birthdate: birthdate, pan_card_number: pan_card_number)

      if @customer.save
        {
          customer: @customer,
          errors: []
        } else {
          customer: nil,
          errors: @customer.errors.full_messages
        }
      end
    end
  end
end
