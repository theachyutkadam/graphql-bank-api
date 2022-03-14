# frozen_string_literal: true

# == Schema Information
#
# Table name: transactions
#
#  id              :bigint           not null, primary key
#  closing_balance :string
#  credit_amount   :string
#  debit_amount    :string
#  narration       :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  account_id      :bigint           not null
#  customer_id     :bigint           not null
#
# Indexes
#
#  index_transactions_on_account_id   (account_id)
#  index_transactions_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#  fk_rails_...  (customer_id => customers.id)
#
class Transaction < ApplicationRecord
  belongs_to :customer
  belongs_to :account
end
