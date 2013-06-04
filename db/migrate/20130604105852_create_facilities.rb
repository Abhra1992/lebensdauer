class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.integer :registration
      t.references :ftype
      t.string :name
      t.references :location
      t.time :open
      t.time :close

      t.timestamps
    end
    add_index :facilities, :ftype_id
    add_index :facilities, :location_id
  end
end
