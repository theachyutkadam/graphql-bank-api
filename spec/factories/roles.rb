# frozen_string_literal: true

<<<<<<< HEAD
# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
=======
>>>>>>> develop
FactoryGirl.define do
  factory :role do
    name { ' Customer ' }
  end
end
