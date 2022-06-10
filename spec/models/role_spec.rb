# frozen_string_literal: true

# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Role, type: :model do
  context 'create a role successfully' do
    subject { described_class.new }
    it 'return role' do
      subject.name = 'Manager'
      expect(subject).to be_valid
    end
  end

  describe '.validations' do
    context 'without name' do
      it 'invalid' do
        expect(subject).to_not be_valid
      end
    end
  end

  context '#validation' do
    it 'is not valid if name is empty' do
      user = build(:role, name: '')
      user.save
      expect(user).to_not be_valid
    end
  end
end
