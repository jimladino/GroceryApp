# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_19_015020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choosers", force: :cascade do |t|
    t.string "day"
    t.integer "breakfast"
    t.integer "lunch"
    t.integer "supper"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "food_name"
    t.string "cost"
    t.string "unit_qty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "image"
    t.string "meal_name"
    t.string "category"
    t.string "prep_time"
    t.string "servings"
    t.integer "food_id", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
