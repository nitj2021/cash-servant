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

ActiveRecord::Schema.define(:version => 20130120124853) do

  create_table "basements", :force => true do |t|
    t.string "category", :null => false
  end

  create_table "bathrooms", :force => true do |t|
    t.string   "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bedrooms", :force => true do |t|
    t.string   "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "garages", :force => true do |t|
    t.string "capacity"
  end

  create_table "pools", :force => true do |t|
    t.string "category"
  end

  create_table "properties", :force => true do |t|
    t.integer  "user_id"
    t.string   "street_address",             :null => false
    t.string   "video"
    t.string   "city",                       :null => false
    t.string   "zip_code",                   :null => false
    t.string   "short_property_description"
    t.text     "full_property_description",  :null => false
    t.text     "meta_description"
    t.text     "meta_keyword"
    t.integer  "asking_price",               :null => false
    t.integer  "square_feet",                :null => false
    t.integer  "year_built",                 :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "property_basements", :force => true do |t|
    t.integer "property_id"
    t.integer "basement_id"
  end

  create_table "property_bathrooms", :force => true do |t|
    t.integer "property_id"
    t.integer "bathroom_id"
  end

  create_table "property_bedrooms", :force => true do |t|
    t.integer "property_id"
    t.integer "bedroom_id"
  end

  create_table "property_garages", :force => true do |t|
    t.integer "property_id"
    t.integer "garage_id"
  end

  create_table "property_pools", :force => true do |t|
    t.integer "property_id"
    t.integer "pool_id"
  end

  create_table "property_property_types", :force => true do |t|
    t.integer "property_id"
    t.integer "property_type_id"
  end

  create_table "property_seller_types", :force => true do |t|
    t.integer "property_id"
    t.integer "seller_type_id"
  end

  create_table "property_stories", :force => true do |t|
    t.integer "property_id"
    t.integer "story_id"
  end

  create_table "property_types", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "property_water_fronts", :force => true do |t|
    t.integer "property_id"
    t.integer "water_front_id"
  end

  create_table "seller_types", :force => true do |t|
    t.string   "category"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stories", :force => true do |t|
    t.string   "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "water_fronts", :force => true do |t|
    t.string "category"
  end

end
