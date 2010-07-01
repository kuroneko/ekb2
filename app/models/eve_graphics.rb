class EveGraphics < EveDb
  set_table_name 'eveGraphics'
  set_primary_key :graphicID
  
  has_many :eve_types, :class_name => "EveType", :foreign_key => "graphicID"
  has_many :eve_groups, :class_name => "EveGroup", :foreign_key => "graphicID"
  has_many :eve_categories, :class_name => "EveCategory", :foreign_key => "graphicID"
end