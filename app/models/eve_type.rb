class EveType < EveDb
  set_table_name 'invTypes'
  set_primary_key 'typeID'

  belongs_to :eve_group, :class_name => "EveGroup", :foreign_key => 'groupID'
  belongs_to :eve_market_group, :class_name => "EveMarketGroup", :foreign_key => "marketGroupID"
  belongs_to :eve_graphics, :class_name => "EveGraphics", :foreign_key => "graphicID"
  
  def to_s
    return self.typeName
  end
end
