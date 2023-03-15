class AddCakeDateToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :cake_date, :date
  end
end
