class PilotParticipant < Participant
  belongs_to :pilot, :class_name => "Pilot", :foreign_key => "pilot_id"
  belongs_to :alliance, :class_name => "Alliance", :foreign_key => "alliance_id"
  
  validates_presence_of :pilot, :on => :create, :message => "can't be blank"
end