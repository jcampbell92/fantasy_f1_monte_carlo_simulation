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

ActiveRecord::Schema.define(version: 2022_05_22_182723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "total_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "team_id"
    t.bigint "teammate_id"
    t.index ["team_id"], name: "index_drivers_on_team_id"
    t.index ["teammate_id"], name: "index_drivers_on_teammate_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "sprint"
  end

  create_table "results", force: :cascade do |t|
    t.integer "qualifying"
    t.integer "start_position"
    t.integer "finish_position"
    t.integer "points_earned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "driver_id"
    t.bigint "race_id"
    t.boolean "fastest", null: false
    t.index ["driver_id"], name: "index_results_on_driver_id"
    t.index ["race_id"], name: "index_results_on_race_id"
  end

  create_table "sprint_results", force: :cascade do |t|
    t.integer "start_position"
    t.integer "finish_position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "driver_id"
    t.bigint "race_id"
    t.integer "points"
    t.index ["driver_id"], name: "index_sprint_results_on_driver_id"
    t.index ["race_id"], name: "index_sprint_results_on_race_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "team_points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  add_foreign_key "drivers", "teams"
  add_foreign_key "results", "drivers"
  add_foreign_key "results", "races"
  add_foreign_key "sprint_results", "drivers"
  add_foreign_key "sprint_results", "races"
end
