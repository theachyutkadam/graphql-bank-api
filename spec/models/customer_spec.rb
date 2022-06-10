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

  context 'ActiveRecord associations' do
    it 'should has_one user' do
      expect(Customer.reflect_on_association(:user).macro).to eq(:has_one)
    end

    it 'should has_many transactions' do
      expect(Customer.reflect_on_association(:transactions).macro).to eq(:has_many)
    end
  end
end
