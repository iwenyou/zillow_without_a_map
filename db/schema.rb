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

ActiveRecord::Schema.define(version: 2021_09_07_041205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable"
  end

  create_table "properties", force: :cascade do |t|
    t.string "sale_type"
    t.string "sold_date"
    t.string "property_type"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "price"
    t.integer "beds"
    t.string "location"
    t.integer "sqft"
    t.integer "lot_size"
    t.integer "year_built"
    t.integer "days_on_market"
    t.integer "price_per_sqft"
    t.integer "hoa"
    t.string "source"
    t.integer "mls"
    t.boolean "favorite"
    t.boolean "interested"
    t.float "latitude"
    t.float "longitude"
    t.string "open_house_start_time"
    t.string "open_house_end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
