class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.integer :registration
      t.string :name
      t.references :category
      t.string :email
      t.integer :fax

      t.timestamps
    end
    add_index :enterprises, :category_id
  end
end
