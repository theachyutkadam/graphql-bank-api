require 'rails_helper'

RSpec.describe Customer, type: :model do
  context 'create a customer successfully' do
    # let(:customer) { create(:customer) }
    it 'return customer count' do
      customer = create(:customer)
      byebug

      expect(Customer.count).to eq(1)
    end
  end
end
