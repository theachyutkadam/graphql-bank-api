class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :csv
      t.string :pin
      t.string :number
      t.integer :type
      t.datetime :expired_at
      t.integer :status
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
