class CreateCarproducts < ActiveRecord::Migration[5.1]
  def change
    create_table :carproducts do |t|
      t.string :name
      t.string :model
      t.string :fueltype
      t.float :price
      t.references :carcategory, foreign_key: true

      t.timestamps
    end
  end
end
