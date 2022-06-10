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
FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    user_name { Faker::IDNumber.brazilian_id }
    password '123456'
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    contact { Faker::PhoneNumber.cell_phone_in_e164 }
    address "#{Faker::Address.city}, #{Faker::Address.street_address}"
    gender Faker::Gender.binary_type
    role
    status { 0 }

    for_customer # default customer association if none of specified.

    trait :for_customer do
      association :information, factory: :customer
    end

    # trait :for_customer do
    #   association :information factory: :employee,
    # end
  end
end
