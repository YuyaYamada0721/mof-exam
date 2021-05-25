class CreateNearestStations < ActiveRecord::Migration[5.2]
  def change
    create_table :nearest_stations do |t|
      t.string :name
      t.string :route_name
      t.integer :minutes_on_foot
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
