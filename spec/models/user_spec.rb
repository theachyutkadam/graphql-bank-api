# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  address          :text
#  contact          :string
#  email            :string
#  first_name       :string
#  gender           :string
#  information_type :string           not null
#  last_name        :string
#  password         :string
#  status           :integer
#  user_name        :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  information_id   :bigint           not null
#  role_id          :bigint           not null
#
# Indexes
#
#  index_users_on_information  (information_type,information_id)
#  index_users_on_role_id      (role_id)
#
# Foreign Keys
#
#  fk_rails_...  (role_id => roles.id)
#
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
