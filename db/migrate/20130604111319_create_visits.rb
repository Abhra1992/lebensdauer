class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.date :date
      t.references :hospital
      t.references :consultant
      t.string :issues
      t.text :prescriptions
      t.references :vital
      t.float :sensitivity

      t.timestamps
    end
    add_index :visits, :hospital_id
    add_index :visits, :consultant_id
    add_index :visits, :vital_id
  end
end
