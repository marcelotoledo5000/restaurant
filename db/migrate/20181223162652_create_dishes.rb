class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.references :restaurante, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
