class User < ApplicationRecord

  belongs_to :role
  belongs_to :information, polymorphic: true
end
