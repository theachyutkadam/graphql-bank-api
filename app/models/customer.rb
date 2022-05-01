# frozen_string_literal: true

class Customer < ApplicationRecord
  has_one :account
  has_one :user, as: :information
  enum status: { active: 0, inactive: 1 } # update factory range when update enum value.
end
