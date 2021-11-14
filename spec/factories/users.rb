# frozen_string_literal: true

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
    association :role, factory: :role
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
