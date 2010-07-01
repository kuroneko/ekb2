class Participant < ActiveRecord::Base
  # All participants belong to a corp.
  belongs_to :corporation
  # participants optionally belong to an Alliance
  belongs_to :alliance, :class_name => "Alliance", :foreign_key => "alliance_id"
  # these two can be used in any participant type...
  
  # For weapon data...
  belongs_to :weapon, :class_name => "EveType", :foreign_key => "weapon_id"
  
  # For structure/NPC type/etc data.
  belongs_to :object, :class_name => "EveType", :foreign_key => "object_id"
  
  
  validates_presence_of :corporation, :on => :create, :message => "can't be blank"
end
