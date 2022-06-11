# frozen_string_literal: true

<<<<<<< HEAD
# == Schema Information
#
# Table name: employees
#
#  id              :bigint           not null, primary key
#  date_of_joining :datetime
#  position        :integer
#  salary          :string
#  status          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Employee < ApplicationRecord
=======
class Employee < ApplicationRecord
  has_one :account
>>>>>>> develop
  has_one :user, as: :information
  enum status: { active: 0, inactive: 1, on_leave: 2 }
end
