class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.integer :status
      t.string :salary
      t.datetime :date_of_joining
      t.integer :position

      t.timestamps
    end
  end
end
