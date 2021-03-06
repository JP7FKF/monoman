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

ActiveRecord::Schema.define(version: 2019_02_21_221623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.integer "asset_category", null: false
    t.string "asset_code"
    t.integer "category"
    t.string "subcategory"
    t.string "manufacturer"
    t.string "product_name", null: false
    t.string "serial_code"
    t.string "localtion"
    t.string "administrator"
    t.string "user"
    t.date "expiration_date"
    t.date "acquisition_date"
    t.integer "acquisition_price"
    t.integer "amortization_period"
    t.integer "state"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "item_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
