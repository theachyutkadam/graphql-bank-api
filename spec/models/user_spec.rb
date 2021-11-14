require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#full_name' do
    context 'return success' do
      it 'return valid full_name' do
        user = create(:user, first_name: 'Newton', last_name: 'Hand')
        full_name = user.full_name
        expect(full_name).to eq('Newton Hand')
      end
    end

    context 'return invalid' do
      it 'return invalid full_name' do
        user = create(:user)
        full_name = user.full_name
        expect(full_name).to_not eq('Newton Sharma')
      end
    end
  end
end
