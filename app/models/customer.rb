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
class Customer < ApplicationRecord
  has_one :user, as: :information
  has_many :transactions
  enum status: { active: 0, inactive: 1 } # update factory range when update enum value.
end
