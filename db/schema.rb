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

ActiveRecord::Schema.define(version: 20170701041113) do

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_devices_on_profile_id"
  end

  create_table "devices_profiles", id: false, force: :cascade do |t|
    t.integer "device_id", null: false
    t.integer "profile_id", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.string "content"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_histories_on_profile_id"
  end

  create_table "histroy_profiles", id: false, force: :cascade do |t|
    t.integer "histroy_id", null: false
    t.integer "profile_id", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "location"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
