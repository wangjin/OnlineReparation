# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130527072642) do

  create_table "announcements", :force => true do |t|
    t.string   "announcement_title",   :limit => 50
    t.text     "announcement_content"
    t.integer  "readtimes",            :limit => 8,  :default => 0
    t.integer  "user_id",              :limit => 8
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "parentId",     :limit => 3
    t.integer  "locationId",   :limit => 3
    t.string   "locationName", :limit => 15
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "material_usages", :force => true do |t|
    t.integer  "material_id",          :limit => 8
    t.integer  "reparation_record_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "materialname",   :limit => 20
    t.integer  "problem_id",     :limit => 2
    t.decimal  "materialprice",                :precision => 7, :scale => 2
    t.integer  "materialamount"
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "news_title",   :limit => 50
    t.text     "news_content"
    t.integer  "readtimes",    :limit => 8,  :default => 0
    t.integer  "user_id",      :limit => 8
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "problems", :force => true do |t|
    t.string   "problemType", :limit => 5
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "reparation_informations", :force => true do |t|
    t.string   "realname",     :limit => 20
    t.string   "cellphone",    :limit => 11
    t.string   "location",     :limit => 50
    t.string   "problem_desc", :limit => 100
    t.integer  "problem_id",   :limit => 3
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "user_id",      :limit => 8
    t.integer  "process_flag", :limit => 1,   :default => 0
  end

  create_table "reparation_record_statuses", :force => true do |t|
    t.string   "status_name", :limit => 10
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "reparation_records", :force => true do |t|
    t.integer  "reparation_information_id"
    t.integer  "user_id",                     :limit => 8
    t.integer  "reparation_record_status_id", :limit => 1
    t.integer  "evaluation",                  :limit => 1
    t.text     "evaluation_desc"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "username",   :limit => 20
    t.string   "password",   :limit => 20
    t.string   "realname",   :limit => 20
    t.string   "cellphone",  :limit => 11
    t.string   "email",      :limit => 50
    t.string   "usertype",   :limit => 1
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "location",   :limit => 50
  end

end
