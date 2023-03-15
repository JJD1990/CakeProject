class CreateCakes < ActiveRecord::Migration[7.0]
  def change
    create_table :cakes do |t|
      t.integer :employee_id
      t.string :size
      t.date :date

      t.timestamps
    end
  end
end
