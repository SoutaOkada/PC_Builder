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

ActiveRecord::Schema.define(version: 2022_08_13_071945) do

  create_table "cases", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "pc_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pc_id"], name: "index_cases_on_pc_id"
  end

  create_table "cpus", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "pc_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pc_id"], name: "index_cpus_on_pc_id"
  end

  create_table "memories", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "pc_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pc_id"], name: "index_memories_on_pc_id"
  end

  create_table "motherboards", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "pc_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pc_id"], name: "index_motherboards_on_pc_id"
  end

  create_table "pcs", force: :cascade do |t|
    t.integer "cpu_id"
    t.integer "memory_id"
    t.integer "motherboard_id"
    t.integer "videocard_id"
    t.integer "case_id"
    t.integer "drive_id"
    t.integer "storage_id"
    t.integer "power_id"
    t.integer "system_id"
    t.integer "cpu_cooler_id"
    t.integer "fan_id"
    t.integer "other_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["case_id"], name: "index_pcs_on_case_id"
    t.index ["cpu_cooler_id"], name: "index_pcs_on_cpu_cooler_id"
    t.index ["cpu_id"], name: "index_pcs_on_cpu_id"
    t.index ["drive_id"], name: "index_pcs_on_drive_id"
    t.index ["fan_id"], name: "index_pcs_on_fan_id"
    t.index ["memory_id"], name: "index_pcs_on_memory_id"
    t.index ["motherboard_id"], name: "index_pcs_on_motherboard_id"
    t.index ["other_id"], name: "index_pcs_on_other_id"
    t.index ["power_id"], name: "index_pcs_on_power_id"
    t.index ["storage_id"], name: "index_pcs_on_storage_id"
    t.index ["system_id"], name: "index_pcs_on_system_id"
    t.index ["videocard_id"], name: "index_pcs_on_videocard_id"
  end

  create_table "powers", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "pc_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pc_id"], name: "index_powers_on_pc_id"
  end

  create_table "storages", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "pc_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pc_id"], name: "index_storages_on_pc_id"
  end

  create_table "videocards", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "pc_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pc_id"], name: "index_videocards_on_pc_id"
  end

  add_foreign_key "pcs", "cases"
  add_foreign_key "pcs", "cpu_coolers"
  add_foreign_key "pcs", "cpus"
  add_foreign_key "pcs", "drives", column: "drive_id"
  add_foreign_key "pcs", "fans"
  add_foreign_key "pcs", "memories"
  add_foreign_key "pcs", "motherboards"
  add_foreign_key "pcs", "others"
  add_foreign_key "pcs", "powers"
  add_foreign_key "pcs", "storages"
  add_foreign_key "pcs", "systems"
  add_foreign_key "pcs", "videocards"
end
