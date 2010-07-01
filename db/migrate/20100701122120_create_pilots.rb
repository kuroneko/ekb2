class CreatePilots < ActiveRecord::Migration
  def self.up
    create_table :pilots do |t|
      t.string  :name, :length => 64, :null => false
      t.integer  :corporation_id, :null => false
      t.integer  :external_id
      t.datetime :last_seen, :null => false
      t.timestamps
    end
    add_index :pilots, :name
    add_index :pilots, [:corporation_id, :name]
    add_index :pilots, :external_id
  end

  def self.down
    drop_table :pilots
  end
end
