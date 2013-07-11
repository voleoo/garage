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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130711175738) do

  create_table "authentications", force: true do |t|
    t.integer  "user_id"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands", force: true do |t|
    t.string   "brand"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: true do |t|
    t.string   "vim"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "car_id"
    t.datetime "deadline",         null: false
    t.string   "price"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "special_deals_id"
  end

  create_table "performers", force: true do |t|
    t.integer  "user_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.integer  "user_id"
    t.string   "phone"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["imageable_id", "imageable_type"], name: "index_pictures_on_imageable_id_and_imageable_type", using: :btree

  create_table "roles", force: true do |t|
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "service"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services_brands", id: false, force: true do |t|
    t.integer "service_id"
    t.integer "brand_id"
  end

  add_index "services_brands", ["brand_id"], name: "index_services_brands_on_brand_id", using: :btree
  add_index "services_brands", ["service_id", "brand_id"], name: "index_services_brands_on_service_id_and_brand_id", using: :btree
  add_index "services_brands", ["service_id"], name: "index_services_brands_on_service_id", using: :btree

  create_table "special_deal_statuses", force: true do |t|
    t.integer  "special_deal_id"
    t.integer  "status_id"
    t.integer  "number_times"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_deals", force: true do |t|
    t.string   "title"
    t.integer  "discount"
    t.text     "description"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
    t.integer  "status_id"
  end

  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree
  add_index "users", ["status_id"], name: "index_users_on_status_id", using: :btree

  create_table "users_cars", force: true do |t|
    t.integer  "user_id"
    t.integer  "car_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_cars", ["car_id"], name: "index_users_cars_on_car_id", using: :btree
  add_index "users_cars", ["user_id"], name: "index_users_cars_on_user_id", using: :btree

  create_table "users_services", force: true do |t|
    t.integer  "user_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
