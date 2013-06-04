class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.references :category
      t.string :affiliation
      t.references :dtype

      t.timestamps
    end
    add_index :departments, :category_id
    add_index :departments, :dtype_id
  end
end
