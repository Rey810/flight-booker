class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :from_id
      t.datetime :depart_at
      t.string :flight_duration
      t.integer :to_id

      t.timestamps
    end
  end
end
