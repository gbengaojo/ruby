class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
