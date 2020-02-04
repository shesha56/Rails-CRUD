class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :employeename
      t.string :designation
      t.integer :phone
    end
  end
end
