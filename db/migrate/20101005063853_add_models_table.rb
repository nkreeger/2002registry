class AddModelsTable < ActiveRecord::Migration
  def self.up
    create_table :models do |t|
      t.integer  :model_id
      t.string   :name
      t.integer  :number
      t.datetime :production_begin
      t.datetime :production_end
      t.integer  :code
      t.integer  :total_production_count
      t.integer  :cylinder_count
      t.integer  :displacement
      t.string   :drive
    end
  end

  def self.down
    drop_table :models
  end
end
