class Corporation < ActiveRecord::Base
  belongs_to :alliance
  has_many :pilots
  has_many :participants
  
  validates_presence_of :name
  validates_presence_of :last_seen
end
