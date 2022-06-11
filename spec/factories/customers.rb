# frozen_string_literal: true

<<<<<<< HEAD
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
=======
>>>>>>> develop
FactoryGirl.define do
  factory :customer do
    status { Faker::Number.within(range: 0..1) }
    birthdate { Faker::Date.birthday(min_age: 5, max_age: 65) }

    trait :for_user do
      association :information, factory: :user
    end
  end
end
