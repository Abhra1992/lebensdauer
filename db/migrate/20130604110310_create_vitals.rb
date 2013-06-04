class CreateVitals < ActiveRecord::Migration
  def change
    create_table :vitals do |t|
      t.float :weight
      t.float :height
      t.float :pressure
      t.float :sugar

      t.timestamps
    end
  end
end
