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

ActiveRecord::Schema.define(version: 20170628024534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choosers", force: :cascade do |t|
    t.string   "day"
    t.integer  "breakfast"
    t.integer  "lunch"
    t.integer  "supper"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string   "food_name"
    t.string   "cost"
    t.string   "unit_qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "image"
    t.string   "meal_name"
    t.string   "category"
    t.string   "prep_time"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "servings"
    t.integer  "food_id",    default: [],              array: true
  end

end
