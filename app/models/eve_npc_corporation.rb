class EveNpcCorporation < EveDb
  set_table_name 'crpNPCCorporations'
  set_primary_key 'corporationID'
  belongs_to :name, :class_name => "EveName", :foreign_key => "corporationID"
end