class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.float :cost

      t.timestamps
    end
  end
end
