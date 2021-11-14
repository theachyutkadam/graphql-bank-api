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
end
