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

ActiveRecord::Schema.define(version: 2021_03_08_201518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cultivos", force: :cascade do |t|
    t.string "name", null: false
    t.string "variedad", null: false
    t.string "plantas", null: false
    t.string "observaciones", null: false
    t.bigint "parcela_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parcela_id"], name: "index_cultivos_on_parcela_id"
  end

  create_table "farms", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "intervencions", force: :cascade do |t|
    t.string "action", null: false
    t.date "fecha", null: false
    t.string "observaciones", null: false
    t.bigint "cultivo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cultivo_id"], name: "index_intervencions_on_cultivo_id"
  end

  create_table "parcelas", force: :cascade do |t|
    t.string "name", null: false
    t.string "tipo", null: false
    t.bigint "farm_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farm_id"], name: "index_parcelas_on_farm_id"
  end

  create_table "recoleccions", force: :cascade do |t|
    t.string "plantas", null: false
    t.float "kilosdextrio", null: false
    t.string "observaciones", null: false
    t.date "fecha", null: false
    t.bigint "cultivo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cultivo_id"], name: "index_recoleccions_on_cultivo_id"
  end

  create_table "tratamientos", force: :cascade do |t|
    t.string "producto", null: false
    t.string "dosis", null: false
    t.string "caldo", null: false
    t.string "observaciones", null: false
    t.date "fecha", null: false
    t.bigint "cultivo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cultivo_id"], name: "index_tratamientos_on_cultivo_id"
  end

  add_foreign_key "cultivos", "parcelas"
  add_foreign_key "intervencions", "cultivos"
  add_foreign_key "parcelas", "farms"
  add_foreign_key "recoleccions", "cultivos"
  add_foreign_key "tratamientos", "cultivos"
end
