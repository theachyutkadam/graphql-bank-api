# frozen_string_literal: true

# == Schema Information
#
# Table name: cards
#
#  id         :bigint           not null, primary key
#  csv        :integer
#  expired_at :datetime
#  name       :string
#  number     :string
#  pin        :string
#  status     :integer
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :bigint           not null
#
# Indexes
#
#  index_cards_on_account_id  (account_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#
class Card < ApplicationRecord
  belongs_to :account
end
