class EveName < EveDb
  set_table_name 'eveNames'
  set_primary_key 'itemID'
  has_one :eve_npc_corporation, :class_name => "EveNpcCorporation", :foreign_key => "corporationID"
end
