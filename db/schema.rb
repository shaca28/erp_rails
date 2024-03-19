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

ActiveRecord::Schema[7.0].define(version: 2024_03_11_131340) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classes", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entradas", force: :cascade do |t|
    t.integer "quantidade_adicionada"
    t.string "origem_entrada"
    t.integer "estoque_id", null: false
    t.integer "fritadeira_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.index ["estoque_id"], name: "index_entradas_on_estoque_id"
    t.index ["fritadeira_id"], name: "index_entradas_on_fritadeira_id"
  end

  create_table "estoques", force: :cascade do |t|
    t.integer "q_atual"
    t.integer "q_min"
    t.integer "q_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fritadeira_id", null: false
    t.index ["fritadeira_id"], name: "index_estoques_on_fritadeira_id"
  end

  create_table "fritadeiras", force: :cascade do |t|
    t.string "modelo"
    t.string "cod_interno"
    t.integer "capacidade"
    t.integer "voltagem"
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "classe_id", null: false
    t.index ["category_id"], name: "index_fritadeiras_on_category_id"
    t.index ["classe_id"], name: "index_fritadeiras_on_classe_id"
  end

  create_table "saidas", force: :cascade do |t|
    t.integer "q_remover"
    t.string "origem_saida"
    t.integer "estoque_id", null: false
    t.integer "fritadeira_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.index ["estoque_id"], name: "index_saidas_on_estoque_id"
    t.index ["fritadeira_id"], name: "index_saidas_on_fritadeira_id"
  end

  add_foreign_key "entradas", "estoques"
  add_foreign_key "entradas", "fritadeiras"
  add_foreign_key "estoques", "fritadeiras"
  add_foreign_key "fritadeiras", "categories"
  add_foreign_key "fritadeiras", "classes", column: "classe_id"
  add_foreign_key "saidas", "estoques"
  add_foreign_key "saidas", "fritadeiras"
end
