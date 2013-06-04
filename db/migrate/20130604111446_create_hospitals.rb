class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.references :location
      t.int :capacity
      t.int :availability

      t.timestamps
    end
    add_index :hospitals, :location_id
  end
end
