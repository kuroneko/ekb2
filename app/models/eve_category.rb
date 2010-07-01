class EveCategory < EveDb
  set_table_name "invCategories"
  set_primary_key "categoryID"

  has_many :eve_groups, :class_name => "EveGroup", 
    :foreign_key => 'categoryID'
  belongs_to :eve_graphics, :class_name => "EveGraphics", 
    :foreign_key => "graphicID"

  def to_s
    return self.categoryName
  end
end
