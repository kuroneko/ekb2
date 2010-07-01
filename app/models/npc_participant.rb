class NpcParticipant < Participant
  belongs_to :object, :class_name => "EveType", :foreign_key => "object_id"
  belongs_to :weapon, :class_name => "EveType", :foreign_key => "weapon_id"
end