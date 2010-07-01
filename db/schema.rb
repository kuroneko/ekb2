# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100701122201) do

  create_table "alliances", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "last_seen",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alliances", ["name"], :name => "index_alliances_on_name"

  create_table "corporations", :force => true do |t|
    t.string   "name",        :null => false
    t.integer  "alliance_id"
    t.datetime "last_seen",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "corporations", ["alliance_id", "name"], :name => "index_corporations_on_alliance_id_and_name"
  add_index "corporations", ["name"], :name => "index_corporations_on_name"

  create_table "participants", :force => true do |t|
    t.string   "type",           :default => "PlayerParticipant", :null => false
    t.integer  "corporation_id",                                  :null => false
    t.integer  "pilot_id"
    t.integer  "alliance_id"
    t.integer  "object_id"
    t.integer  "weapon_id"
    t.integer  "damage",         :default => 0,                   :null => false
    t.boolean  "victim",         :default => false,               :null => false
    t.boolean  "finalblow",      :default => false,               :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pilots", :force => true do |t|
    t.string   "name",           :null => false
    t.integer  "corporation_id", :null => false
    t.integer  "external_id"
    t.datetime "last_seen",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pilots", ["corporation_id", "name"], :name => "index_pilots_on_corporation_id_and_name"
  add_index "pilots", ["external_id"], :name => "index_pilots_on_external_id"
  add_index "pilots", ["name"], :name => "index_pilots_on_name"

end
