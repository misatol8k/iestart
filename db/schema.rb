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

ActiveRecord::Schema.define(version: 2022_02_01_071721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultation_details", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "property_id"
  end

  create_table "consultation_matters", force: :cascade do |t|
    t.string "item", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name", null: false
    t.string "mail", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "specialist_id"
    t.string "introducer"
  end

  create_table "matchings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "properties", force: :cascade do |t|
    t.integer "property_type"
    t.string "url"
    t.string "name"
    t.string "other"
    t.string "trader"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "newly_built_house", null: false
    t.integer "used_house", null: false
    t.integer "newly_built_condominium", null: false
    t.integer "used_condominium", null: false
    t.integer "land", null: false
    t.integer "price_and_pepayment", null: false
    t.integer "building_and_structure", null: false
    t.integer "floor_plan", null: false
    t.integer "surrounding_environment", null: false
    t.integer "family_relatives", null: false
    t.integer "other_point", null: false
    t.bigint "customer_id"
    t.integer "prefecture_id"
    t.text "price_and_pepayment_coment"
    t.text "building_and_structure_coment"
    t.text "floor_plan_coment"
    t.text "surrounding_environment_coment"
    t.text "family_relatives_coment"
    t.text "other_point_coment"
    t.index ["customer_id"], name: "index_properties_on_customer_id"
  end

  create_table "property_lists", force: :cascade do |t|
    t.string "property_type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialists", force: :cascade do |t|
    t.string "name", null: false
    t.string "expertise_property", null: false
    t.string "consultation_item", null: false
    t.string "qualification"
    t.text "description"
    t.text "career"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "newly_built_house", null: false
    t.integer "used_house", null: false
    t.integer "newly_built_condominium", null: false
    t.integer "used_condominium", null: false
    t.integer "land", null: false
    t.integer "price_and_pepayment", null: false
    t.integer "building_and_structure", null: false
    t.integer "floor_plan", null: false
    t.integer "surrounding_environment", null: false
    t.integer "family_relatives", null: false
    t.integer "other_point", null: false
  end

  add_foreign_key "properties", "customers"
end
