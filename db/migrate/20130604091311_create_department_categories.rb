class CreateDepartmentCategories < ActiveRecord::Migration
  def change
    create_table :department_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
