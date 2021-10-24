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

ActiveRecord::Schema.define(version: 2021_10_22_161319) do

  create_table "bills", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.decimal "amount", precision: 8, scale: 2
    t.integer "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_bills_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "abbreviation", limit: 5
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["abbreviation"], name: "index_properties_on_abbreviation", unique: true
  end

  create_table "tenants", force: :cascade do |t|
    t.string "name", limit: 30
    t.date "move_in_date"
    t.date "move_out_date"
    t.integer "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_tenants_on_property_id"
  end

  add_foreign_key "bills", "properties"
  add_foreign_key "tenants", "properties"
end
