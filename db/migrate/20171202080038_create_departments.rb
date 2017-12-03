class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :location
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
