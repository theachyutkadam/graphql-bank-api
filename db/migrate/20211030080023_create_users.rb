# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :user_name
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :contact
      t.text :address
      t.string :gender
      t.references :role, null: false, foreign_key: true
      t.integer :status
      t.references :information, polymorphic: true, null: false

      t.timestamps
    end
  end
end
