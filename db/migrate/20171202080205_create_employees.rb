class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.integer :gender
      t.text :address
      t.string :country
      t.string :city
      t.string :zipcode
      t.references :project, foreign_key: true
      t.references :department, foreign_key: true
      t.references :company, foreign_key: true
      t.integer :type
      t.integer :role
      t.string :designation

      t.timestamps
    end
  end
end
