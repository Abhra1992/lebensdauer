class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :name
      t.text :symptoms
      t.text :causes

      t.timestamps
    end
  end
end
