class Alliance < ActiveRecord::Base
  has_many :corporations
  
  validates_presence_of :name
  validates_presence_of :last_seen
end
