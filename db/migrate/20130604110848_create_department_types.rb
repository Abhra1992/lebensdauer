class CreateDepartmentTypes < ActiveRecord::Migration
  def change
    create_table :department_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
