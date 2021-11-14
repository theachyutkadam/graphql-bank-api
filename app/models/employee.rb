# frozen_string_literal: true

class Employee < ApplicationRecord
  has_one :user, as: :information
  enum status: { active: 0, inactive: 1, on_leave: 2 }
end
