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
class Role < ApplicationRecord
  has_many :users, dependent: :destroy
=======
class Role < ApplicationRecord
  has_many :users
>>>>>>> develop

  validates :name, presence: true
end
