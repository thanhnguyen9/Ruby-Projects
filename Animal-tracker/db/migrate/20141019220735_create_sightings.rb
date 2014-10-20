class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.integer :wild_id
      t.string :date
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
