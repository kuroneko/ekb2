class CreateCorporations < ActiveRecord::Migration
  def self.up
    create_table :corporations do |t|
      t.string :name, :length => 64, :null => false
      t.integer :alliance_id, :null => true
      t.datetime :last_seen, :null => false
      t.timestamps
    end
    add_index :corporations, :name
    add_index :corporations, [:alliance_id, :name]
  end

  def self.down
    drop_table :corporations
  end
end
