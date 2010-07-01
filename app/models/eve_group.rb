class EveGroup < EveDb
  set_table_name "invGroups"
  set_primary_key "groupID"

  has_many :eve_types, :class_name => "EveType", 
        :foreign_key => 'groupID'
  belongs_to :eve_category, :class_name => "EveCategory",
        :foreign_key => 'categoryID'
  belongs_to :eve_graphics, :class_name => "EveGraphics", 
        :foreign_key => "graphicID"
        
  def to_s
    return self.groupName
  end
end
