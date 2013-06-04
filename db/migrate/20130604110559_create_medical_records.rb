class CreateMedicalRecords < ActiveRecord::Migration
  def change
    create_table :medical_records do |t|
      t.date :onset
      t.date :closure
      t.text :comments

      t.timestamps
    end
  end
end
