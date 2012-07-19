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

ActiveRecord::Schema.define(:version => 20120717164116) do

  create_table "members", :force => true do |t|
    t.integer  "state_id"
    t.string   "person_id"
    t.string   "title"
    t.string   "prefix"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "mid_name"
    t.string   "nick_name"
    t.string   "legal_name"
    t.string   "state"
    t.string   "legislator_type"
    t.string   "chamber"
    t.string   "party_code"
    t.string   "district"
    t.string   "district_id"
    t.string   "family"
    t.string   "religion"
    t.string   "email"
    t.string   "website"
    t.string   "webform"
    t.string   "weblog"
    t.string   "blog"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "youtube"
    t.string   "photo_path"
    t.string   "photo_file"
    t.string   "gender"
    t.string   "birth_place"
    t.string   "spouse"
    t.string   "marital_status"
    t.string   "residence"
    t.string   "school_1_name"
    t.string   "school_1_date"
    t.string   "school_1_degree"
    t.string   "school_2_name"
    t.string   "school_2_date"
    t.string   "school_2_degree"
    t.string   "school_3_name"
    t.string   "school_3_date"
    t.string   "school_3_degree"
    t.string   "military_1_branch"
    t.string   "military_1_rank"
    t.string   "military_1_dates"
    t.string   "military_2_branch"
    t.string   "military_2_rank"
    t.string   "military_2_dates"
    t.string   "mail_name"
    t.string   "mail_title"
    t.string   "mail_address_1"
    t.string   "mail_address_2"
    t.string   "mail_address_3"
    t.string   "mail_address_4"
    t.string   "mail_address_5"
    t.date     "born_on"
    t.text     "know_who_data"
    t.text     "biography"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "slug"
  end

  add_index "members", ["slug"], :name => "index_members_on_slug", :unique => true

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "region"
    t.boolean  "is_state",            :default => true
    t.integer  "pointer_zero",        :default => 0
    t.integer  "pointer_one",         :default => 0
    t.integer  "pointer_two",         :default => 1
    t.date     "last_incremented_on", :default => '2012-07-12', :null => false
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "slug"
    t.integer  "daily_segment_id"
    t.integer  "weekly_segment_id"
  end

  add_index "states", ["slug"], :name => "index_states_on_slug", :unique => true

end
