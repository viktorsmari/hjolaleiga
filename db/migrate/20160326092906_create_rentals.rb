class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.date :start_date
      t.date :end_date
      t.string :email
      t.references :bicycle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
