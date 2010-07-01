class Pilot < ActiveRecord::Base
  belongs_to :corporation

  validates_presence_of :name
  validates_presence_of :last_seen
  validates_presence_of :corporation
end
