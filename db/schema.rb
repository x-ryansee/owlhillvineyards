# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_31_020529) do
  create_table "olive_oils", force: :cascade do |t|
    t.string "olive_species"
    t.integer "bottle_size"
    t.integer "vintage"
    t.string "other_ingredients"
    t.text "about"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "varietal"
    t.integer "bottle_size"
    t.string "color"
    t.integer "vintage"
    t.text "about"
    t.string "image_url"
    t.integer "bold"
    t.integer "tannic"
    t.integer "dry"
    t.integer "acidic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
