# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150719150258) do

  create_table "caixas", force: true do |t|
    t.integer  "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caminhos", force: true do |t|
    t.text     "conteudo"
    t.integer  "rua_id"
    t.integer  "estante_id"
    t.integer  "prateleira_id"
    t.integer  "caixa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "caminhos", ["caixa_id"], name: "index_caminhos_on_caixa_id"
  add_index "caminhos", ["estante_id"], name: "index_caminhos_on_estante_id"
  add_index "caminhos", ["prateleira_id"], name: "index_caminhos_on_prateleira_id"
  add_index "caminhos", ["rua_id"], name: "index_caminhos_on_rua_id"

  create_table "estantes", force: true do |t|
    t.integer  "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prateleiras", force: true do |t|
    t.string   "letra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ruas", force: true do |t|
    t.integer  "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
