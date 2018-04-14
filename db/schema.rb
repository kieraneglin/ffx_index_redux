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

ActiveRecord::Schema.define(version: 2018_04_14_201736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.string "ability_type"
    t.bigint "item_id"
    t.integer "item_amount"
    t.string "effect"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_abilities_on_item_id"
  end

  create_table "bribe_drops", force: :cascade do |t|
    t.bigint "monster_id"
    t.bigint "item_id"
    t.integer "amount"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_bribe_drops_on_item_id"
    t.index ["monster_id"], name: "index_bribe_drops_on_monster_id"
  end

  create_table "elements", force: :cascade do |t|
    t.bigint "monster_id"
    t.float "fire"
    t.float "thunder"
    t.float "ice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_elements_on_monster_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "effect"
    t.string "effect_type"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "key_items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "location_id"
    t.text "details"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_key_items_on_location_id"
  end

  create_table "kill_drops", force: :cascade do |t|
    t.bigint "monster_id"
    t.bigint "item_id"
    t.integer "amount"
    t.boolean "rare", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_kill_drops_on_item_id"
    t.index ["monster_id"], name: "index_kill_drops_on_monster_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations_monsters", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "monster_id"
    t.index ["location_id"], name: "index_locations_monsters_on_location_id"
    t.index ["monster_id"], name: "index_locations_monsters_on_monster_id"
  end

  create_table "mix_items", force: :cascade do |t|
    t.bigint "mix_id"
    t.integer "item_one_id"
    t.integer "item_two_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mix_id"], name: "index_mix_items_on_mix_id"
  end

  create_table "mixes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monster_drop_abilities", force: :cascade do |t|
    t.bigint "monster_id"
    t.bigint "ability_id"
    t.string "ability_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ability_id"], name: "index_monster_drop_abilities_on_ability_id"
    t.index ["monster_id"], name: "index_monster_drop_abilities_on_monster_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.integer "health"
    t.integer "overkill"
    t.integer "strength"
    t.integer "defense"
    t.integer "magic"
    t.integer "magic_defense"
    t.integer "mp"
    t.integer "agility"
    t.integer "luck"
    t.integer "ap"
    t.integer "evasion"
    t.integer "accuracy"
    t.integer "gil"
    t.boolean "boss", default: false
    t.string "notes"
    t.string "skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steal_drops", force: :cascade do |t|
    t.bigint "monster_id"
    t.bigint "item_id"
    t.integer "amount"
    t.boolean "rare", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_steal_drops_on_item_id"
    t.index ["monster_id"], name: "index_steal_drops_on_monster_id"
  end

  add_foreign_key "abilities", "items"
  add_foreign_key "bribe_drops", "items"
  add_foreign_key "bribe_drops", "monsters"
  add_foreign_key "elements", "monsters"
  add_foreign_key "key_items", "locations"
  add_foreign_key "kill_drops", "items"
  add_foreign_key "kill_drops", "monsters"
  add_foreign_key "locations_monsters", "locations"
  add_foreign_key "locations_monsters", "monsters"
  add_foreign_key "mix_items", "mixes"
  add_foreign_key "monster_drop_abilities", "abilities"
  add_foreign_key "monster_drop_abilities", "monsters"
  add_foreign_key "steal_drops", "items"
  add_foreign_key "steal_drops", "monsters"
end
