

ActiveRecord::Schema.define(version: 20170404212745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drivers", force: :cascade do |t|
    t.integer  "driver_id"
    t.string   "name"
    t.string   "vin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.integer  "rider_id"
    t.string   "name"
    t.string   "phone_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "trip_id"
    t.integer  "driver_id"
    t.integer  "rider_id"
    t.date     "date"
    t.integer  "rating"
    t.float    "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
