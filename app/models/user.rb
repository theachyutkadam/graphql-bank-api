# frozen_string_literal: true

class User < ApplicationRecord

  belongs_to :role
  belongs_to :information, polymorphic: true
  enum status: { active: 0, inactive: 1 } # update factory range when update enum value.

  validates :first_name, :last_name, :contact, :email, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
