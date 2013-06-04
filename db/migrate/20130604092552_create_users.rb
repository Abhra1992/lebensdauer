class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :SSN
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.date :birthdate
      t.boolean :sex
      t.integer :phone
      t.string :address
      t.string :photo
      t.references :language
      t.references :marital_status
      t.references :nationality
      t.references :ethnicity

      t.timestamps
    end
    add_index :users, :language_id
    add_index :users, :marital_status_id
    add_index :users, :nationality_id
    add_index :users, :ethnicity_id
  end
end
