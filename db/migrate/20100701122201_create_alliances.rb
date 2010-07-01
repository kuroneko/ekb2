class CreateAlliances < ActiveRecord::Migration
  def self.up
    create_table :alliances do |t|
      t.string :name, :null => false
      t.datetime :last_seen, :null => false
      t.timestamps
    end
    add_index :alliances, :name
  end

  def self.down
    drop_table :alliances
  end
end
