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

ActiveRecord::Schema[7.0].define(version: 2022_09_10_030051) do
  create_table "admin_ecosystem_assignments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_admin_ecosystem_assignments_on_role_id"
    t.index ["user_id", "role_id"], name: "admin_ecosystem_assignment_index1", unique: true
    t.index ["user_id"], name: "index_admin_ecosystem_assignments_on_user_id"
  end

  create_table "admin_ecosystem_localidades", force: :cascade do |t|
    t.string "nome"
    t.integer "uf_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uf_id", "nome"], name: "index_admin_ecosystem_localidades_on_uf_id_and_nome", unique: true
    t.index ["uf_id"], name: "index_admin_ecosystem_localidades_on_uf_id"
  end

  create_table "admin_ecosystem_paises", force: :cascade do |t|
    t.string "nome"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nome"], name: "index_admin_ecosystem_paises_on_nome", unique: true
    t.index ["sigla"], name: "index_admin_ecosystem_paises_on_sigla", unique: true
  end

  create_table "admin_ecosystem_roles", force: :cascade do |t|
    t.string "nome"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_admin_ecosystem_roles_on_codigo", unique: true
  end

  create_table "admin_ecosystem_ufs", force: :cascade do |t|
    t.string "nome"
    t.string "sigla"
    t.integer "pais_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pais_id", "nome"], name: "index_admin_ecosystem_ufs_on_pais_id_and_nome", unique: true
    t.index ["pais_id", "sigla"], name: "index_admin_ecosystem_ufs_on_pais_id_and_sigla", unique: true
    t.index ["pais_id"], name: "index_admin_ecosystem_ufs_on_pais_id"
  end

  create_table "admin_ecosystem_users", force: :cascade do |t|
    t.string "username", null: false
    t.string "nome", null: false
    t.string "subnome"
    t.string "matricula"
    t.string "codigo"
    t.string "email"
    t.string "url"
    t.string "foto"
    t.string "info"
    t.string "password", null: false
    t.string "password_hash", default: "", null: false
    t.string "password_salt"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_admin_ecosystem_users_on_codigo", unique: true
    t.index ["email"], name: "index_admin_ecosystem_users_on_email", unique: true
    t.index ["matricula"], name: "index_admin_ecosystem_users_on_matricula", unique: true
    t.index ["username"], name: "index_admin_ecosystem_users_on_username", unique: true
  end

  create_table "exemplo1s", force: :cascade do |t|
    t.string "nome"
    t.integer "idade"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exemplo2s", force: :cascade do |t|
    t.string "nome"
    t.integer "numero"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "admin_ecosystem_assignments", "admin_ecosystem_roles", column: "role_id"
  add_foreign_key "admin_ecosystem_assignments", "admin_ecosystem_users", column: "user_id"
  add_foreign_key "admin_ecosystem_localidades", "admin_ecosystem_ufs", column: "uf_id"
  add_foreign_key "admin_ecosystem_ufs", "admin_ecosystem_paises", column: "pais_id"
end
