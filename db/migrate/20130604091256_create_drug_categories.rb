class CreateDrugCategories < ActiveRecord::Migration
  def change
    create_table :drug_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
