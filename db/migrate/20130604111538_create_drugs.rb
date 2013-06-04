class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.references :category
      t.string :schedule
      t.float :price

      t.timestamps
    end
    add_index :drugs, :category_id
  end
end
