# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101106162957) do

  create_table "cars", :force => true do |t|
    t.integer  "user_id"
    t.integer  "vin"
    t.integer  "model_id"
    t.integer  "claimed_year"
    t.string   "color"
    t.boolean  "is_alive"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "location_country_code"
    t.string   "location_state"
  end

  add_index "cars", ["model_id"], :name => "index_cars_on_model_id"
  add_index "cars", ["user_id"], :name => "index_cars_on_user_id"

  create_table "models", :force => true do |t|
    t.integer  "model_id"
    t.string   "name"
    t.integer  "number"
    t.datetime "production_begin"
    t.datetime "production_end"
    t.integer  "code"
    t.integer  "total_production_count"
    t.integer  "cylinder_count"
    t.integer  "displacement"
    t.string   "drive"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "password"
    t.string   "password_confirm"
    t.boolean  "share_info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "remember_token"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
