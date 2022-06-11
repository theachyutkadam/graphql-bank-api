# frozen_string_literal: true

<<<<<<< HEAD
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
=======
>>>>>>> develop
class User < ApplicationRecord
  belongs_to :role
  belongs_to :information, polymorphic: true
  enum status: { active: 0, inactive: 1 } # update factory range when update enum value.

  validates :first_name, :last_name, :contact, :email, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
