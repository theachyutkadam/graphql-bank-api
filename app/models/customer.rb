# frozen_string_literal: true

class Customer < ApplicationRecord
  has_one :user, as: :information
  has_many :transactions
  enum status: { active: 0, inactive: 1 } # update factory range when update enum value.
end
