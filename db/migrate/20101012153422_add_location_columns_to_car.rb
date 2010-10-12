class AddLocationColumnsToCar < ActiveRecord::Migration
  def self.up
    add_column :cars, :location_country_code, :string
    add_column :cars, :location_state,        :string
  end

  def self.down
    remove_column :cars, :location_country_code
    remove_column :cars, :location_state
  end
end