# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer, type: :model do
  context 'create a customer successfully' do
    # let(:customer) { create(:customer) }
    it 'return customer count' do
      create(:customer)
      expect(Customer.count).to eq(1)
    end
  end
end
