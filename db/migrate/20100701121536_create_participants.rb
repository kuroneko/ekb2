class CreateParticipants < ActiveRecord::Migration
  def self.up
    create_table :participants do |t|
      t.string :type, :null => false, :default => 'PlayerParticipant'
      # there will *Always* be a corporation, even if it's an NPC/Pirate corp.
      t.integer :corporation_id, :null => false
      # everything else is negotiable however.
      t.integer :pilot_id, :null => true
      t.integer :alliance_id, :null => true
      
      # these are a bit special.
      # NPC's often have both.
      # and player kills usually have a weapon, however, sometimes we don't
      # have this data at all.
      t.integer :object_id, :null => true
      t.integer :weapon_id, :null => true
      
      # this is all pretty ordinary.
      t.integer :damage, :null => false, :default => 0
      t.boolean :victim, :null => false, :default => false
      t.boolean :finalblow, :null => false, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :participants
  end
end
