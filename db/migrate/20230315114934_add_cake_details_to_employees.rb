class AddCakeDetailsToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :cake_details, :jsonb
  end
end
