class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.text :info
      t.integer :gears
      t.decimal :price
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
