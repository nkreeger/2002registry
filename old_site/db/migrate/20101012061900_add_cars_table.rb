class AddCarsTable < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.integer :user_id
      t.integer :vin
      t.integer :model_id
      t.integer :claimed_year
      t.string  :color
      t.boolean :is_alive
    end
    
    add_index :cars, :user_id
    add_index :cars, :model_id
  end

  def self.down
    drop_table :cars
  end
end
