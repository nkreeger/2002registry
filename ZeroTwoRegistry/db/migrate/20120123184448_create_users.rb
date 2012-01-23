class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
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
      t.string   "avatar_file_name"
      t.string   "avatar_content_type"
      t.integer  "avatar_file_size"
      t.datetime "avatar_updated_at"
      t.timestamps
    end
  end
end
