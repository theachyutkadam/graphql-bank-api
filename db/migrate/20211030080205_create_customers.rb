class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.integer :status
      t.datetime :birthdate
      t.string :pan_card_number

      t.timestamps
    end
  end
end
