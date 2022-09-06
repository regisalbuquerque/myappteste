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

ActiveRecord::Schema[7.0].define(version: 2022_09_06_151316) do
  create_table "admin_ecosystem_assignments", force: :cascade do |t|
    t.integer "admin_ecosystem_user_id", null: false
    t.integer "admin_ecosystem_role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_ecosystem_role_id"], name: "index_admin_ecosystem_assignments_on_admin_ecosystem_role_id"
    t.index ["admin_ecosystem_user_id", "admin_ecosystem_role_id"], name: "admin_ecosystem_assignment_index1", unique: true
    t.index ["admin_ecosystem_user_id"], name: "index_admin_ecosystem_assignments_on_admin_ecosystem_user_id"
  end

  create_table "admin_ecosystem_roles", force: :cascade do |t|
    t.string "nome"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_admin_ecosystem_roles_on_codigo", unique: true
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

  add_foreign_key "admin_ecosystem_assignments", "admin_ecosystem_roles"
  add_foreign_key "admin_ecosystem_assignments", "admin_ecosystem_users"
end
