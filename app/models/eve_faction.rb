class EveFaction < EveDb
  set_table_name 'chrFactions'
  set_primary_key :factionID
  
  def to_s
    return self.factionName
  end
end # class
