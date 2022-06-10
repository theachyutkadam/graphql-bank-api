# frozen_string_literal: true

# == Schema Information
#
# Table name: customers
#
#  id              :bigint           not null, primary key
#  birthdate       :datetime
#  pan_card_number :string
#  status          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe Customer, type: :model do
  context 'create a customer successfully' do
    it 'return customer count' do
      create(:customer)
      expect(Customer.count).to eq(1)
    end
  end
end
