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

ActiveRecord::Schema.define(version: 2021_04_26_205442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alleys", force: :cascade do |t|
    t.integer "number"
    t.integer "status", default: 0
    t.bigint "checkout_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["checkout_id"], name: "index_alleys_on_checkout_id"
  end

  create_table "checkouts", force: :cascade do |t|
    t.decimal "price", precision: 8, scale: 2
    t.integer "playtime"
    t.datetime "order_time"
    t.bigint "staff_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["staff_id"], name: "index_checkouts_on_staff_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.bigint "team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "points"
    t.integer "splits"
    t.integer "spares"
    t.integer "strikes"
    t.bigint "player_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_scores_on_player_id"
  end

  create_table "staff", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "password_digest"
    t.string "position"
    t.date "employment_date"
    t.float "experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "total_score"
    t.bigint "alley_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alley_id"], name: "index_teams_on_alley_id"
  end

  add_foreign_key "alleys", "checkouts"
  add_foreign_key "checkouts", "staff"
  add_foreign_key "players", "teams"
  add_foreign_key "scores", "players"
  add_foreign_key "teams", "alleys"
end
