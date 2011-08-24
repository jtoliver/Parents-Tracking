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

ActiveRecord::Schema.define(:version => 20110628150744) do

  create_table "contacts", :force => true do |t|
    t.datetime "date"
    t.string   "staff"
    t.string   "parentcom"
    t.string   "parentcomother"
    t.string   "topic"
    t.string   "topic_other"
    t.string   "email"
    t.text     "comment"
    t.string   "feedback"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts_topics", :id => false, :force => true do |t|
    t.integer "contact_id", :null => false
    t.integer "topic_id",   :null => false
  end

  create_table "topics", :force => true do |t|
    t.string   "topic"
    t.text     "checkhelp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "office_number"
    t.string   "username"
    t.string   "email"
    t.string   "accesslevel"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.integer  "failed_login_count"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
