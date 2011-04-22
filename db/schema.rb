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

ActiveRecord::Schema.define(:version => 20110421234239) do

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "request_id"
    t.string   "content"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "admin"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "request_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", :force => true do |t|
    t.string   "title"
    t.string   "status"
    t.integer  "group_id"
    t.integer  "user_id"
    t.text     "content"
    t.integer  "is_public"
    t.string   "resolution"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "type"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "first_name"
    t.string   "first_last_name"
    t.string   "second_last_name"
    t.date     "date_of_birth"
    t.integer  "is_admin"
    t.string   "status"
    t.string   "church_attending"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end