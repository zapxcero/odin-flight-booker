class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.date :date
      t.integer :duration
      t.integer :departure_airport_id, null: false
      t.integer :arrival_airport_id, null: false

      t.timestamps
    end
  end
end
