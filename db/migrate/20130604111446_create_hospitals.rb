class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.references :location
      t.integer :capacity
      t.integer :availability

      t.timestamps
    end
    add_index :hospitals, :location_id
  end
end
