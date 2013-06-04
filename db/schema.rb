# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130604111538) do

  create_table "blood_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "department_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "department_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "departments", :force => true do |t|
    t.integer  "category_id"
    t.string   "affiliation"
    t.integer  "dtype_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "departments", ["category_id"], :name => "index_departments_on_category_id"
  add_index "departments", ["dtype_id"], :name => "index_departments_on_dtype_id"

  create_table "designations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "diseases", :force => true do |t|
    t.string   "name"
    t.text     "symptoms"
    t.text     "causes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "drug_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "drugs", :force => true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.string   "schedule"
    t.float    "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "drugs", ["category_id"], :name => "index_drugs_on_category_id"

  create_table "enterprise_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "enterprises", :force => true do |t|
    t.integer  "registration"
    t.string   "name"
    t.integer  "category_id"
    t.string   "email"
    t.integer  "fax"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "enterprises", ["category_id"], :name => "index_enterprises_on_category_id"

  create_table "equipment", :force => true do |t|
    t.string   "name"
    t.float    "cost"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ethnicities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "facilities", :force => true do |t|
    t.integer  "registration"
    t.integer  "ftype_id"
    t.string   "name"
    t.integer  "location_id"
    t.time     "open"
    t.time     "close"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "facilities", ["ftype_id"], :name => "index_facilities_on_ftype_id"
  add_index "facilities", ["location_id"], :name => "index_facilities_on_location_id"

  create_table "facility_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hospitals", :force => true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.integer  "capacity"
    t.integer  "availability"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "hospitals", ["location_id"], :name => "index_hospitals_on_location_id"

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "marital_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "medical_records", :force => true do |t|
    t.date     "onset"
    t.date     "closure"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nationalities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "SSN"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.date     "birthdate"
    t.boolean  "sex"
    t.integer  "phone"
    t.string   "address"
    t.string   "photo"
    t.integer  "language_id"
    t.integer  "marital_status_id"
    t.integer  "nationality_id"
    t.integer  "ethnicity_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["ethnicity_id"], :name => "index_users_on_ethnicity_id"
  add_index "users", ["language_id"], :name => "index_users_on_language_id"
  add_index "users", ["marital_status_id"], :name => "index_users_on_marital_status_id"
  add_index "users", ["nationality_id"], :name => "index_users_on_nationality_id"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "visits", :force => true do |t|
    t.date     "date"
    t.integer  "hospital_id"
    t.integer  "consultant_id"
    t.string   "issues"
    t.text     "prescriptions"
    t.integer  "vital_id"
    t.float    "sensitivity"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "visits", ["consultant_id"], :name => "index_visits_on_consultant_id"
  add_index "visits", ["hospital_id"], :name => "index_visits_on_hospital_id"
  add_index "visits", ["vital_id"], :name => "index_visits_on_vital_id"

  create_table "vitals", :force => true do |t|
    t.float    "weight"
    t.float    "height"
    t.float    "pressure"
    t.float    "sugar"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
