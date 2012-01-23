class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :password
      t.string :password_confirm
      t.boolean :share_info

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
