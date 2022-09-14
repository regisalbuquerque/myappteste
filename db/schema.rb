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

ActiveRecord::Schema[7.0].define(version: 2022_09_14_105044) do
  create_table "admin_ecosystem_assignments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_admin_ecosystem_assignments_on_role_id"
    t.index ["user_id", "role_id"], name: "admin_ecosystem_assignment_index1", unique: true
    t.index ["user_id"], name: "index_admin_ecosystem_assignments_on_user_id"
  end

  create_table "admin_ecosystem_clientes", force: :cascade do |t|
    t.string "nome", null: false
    t.date "data_nascimento"
    t.integer "nacionalidade_id"
    t.integer "sexo_id"
    t.integer "estado_civil_id"
    t.string "profissao"
    t.string "rg"
    t.string "cpf"
    t.string "mae_nome"
    t.string "pai_nome"
    t.string "contato_telefone"
    t.string "contato_celular"
    t.string "contato_email"
    t.string "end_cep"
    t.string "end_logradouro"
    t.string "end_bairro"
    t.string "end_numero"
    t.integer "end_uf_id"
    t.integer "end_localidade_id"
    t.string "end_complemento"
    t.string "status"
    t.string "status_financeiro"
    t.text "obs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_localidade_id"], name: "index_admin_ecosystem_clientes_on_end_localidade_id"
    t.index ["end_uf_id"], name: "index_admin_ecosystem_clientes_on_end_uf_id"
    t.index ["estado_civil_id"], name: "index_admin_ecosystem_clientes_on_estado_civil_id"
    t.index ["nacionalidade_id"], name: "index_admin_ecosystem_clientes_on_nacionalidade_id"
    t.index ["sexo_id"], name: "index_admin_ecosystem_clientes_on_sexo_id"
  end

  create_table "admin_ecosystem_estados_civis", force: :cascade do |t|
    t.string "nome", null: false
    t.string "codigo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_admin_ecosystem_estados_civis_on_codigo", unique: true
    t.index ["nome"], name: "index_admin_ecosystem_estados_civis_on_nome", unique: true
  end

  create_table "admin_ecosystem_historicos", force: :cascade do |t|
    t.date "data", null: false
    t.text "historico", null: false
    t.string "historical_type"
    t.integer "historical_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["historical_type", "historical_id"], name: "index_admin_ecosystem_historicos_on_historical"
  end

  create_table "admin_ecosystem_lancamentos_receber", force: :cascade do |t|
    t.integer "cliente_id"
    t.integer "pagamento_forma_id"
    t.integer "pagamento_bandeira_id"
    t.string "descricao"
    t.decimal "valor"
    t.decimal "desconto_porcentagem"
    t.decimal "desconto_valor"
    t.decimal "juros"
    t.decimal "multa"
    t.decimal "taxa"
    t.decimal "acrescimos"
    t.decimal "valor_total"
    t.boolean "parcelado"
    t.boolean "parcelado_mensal"
    t.integer "parcelas_qtde"
    t.integer "parcelas_dia_fixo"
    t.integer "parcelas_intervalo_dias"
    t.decimal "valor_entrada"
    t.decimal "valor_parcela"
    t.date "data_lancamento"
    t.date "data_vencimento_entrada"
    t.date "data_vencimento_primeira"
    t.string "status"
    t.text "obs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_admin_ecosystem_lancamentos_receber_on_cliente_id"
    t.index ["pagamento_bandeira_id"], name: "admin_lancamentos_receber_fk_bandeira"
    t.index ["pagamento_forma_id"], name: "index_admin_ecosystem_lancamentos_receber_on_pagamento_forma_id"
  end

  create_table "admin_ecosystem_localidades", force: :cascade do |t|
    t.string "nome"
    t.integer "uf_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uf_id", "nome"], name: "index_admin_ecosystem_localidades_on_uf_id_and_nome", unique: true
    t.index ["uf_id"], name: "index_admin_ecosystem_localidades_on_uf_id"
  end

  create_table "admin_ecosystem_nacionalidades", force: :cascade do |t|
    t.string "nome", null: false
    t.string "codigo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_admin_ecosystem_nacionalidades_on_codigo", unique: true
    t.index ["nome"], name: "index_admin_ecosystem_nacionalidades_on_nome", unique: true
  end

  create_table "admin_ecosystem_pagamento_bandeiras", force: :cascade do |t|
    t.string "nome", null: false
    t.string "codigo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_admin_ecosystem_pagamento_bandeiras_on_codigo", unique: true
    t.index ["nome"], name: "index_admin_ecosystem_pagamento_bandeiras_on_nome", unique: true
  end

  create_table "admin_ecosystem_pagamento_formas", force: :cascade do |t|
    t.string "nome", null: false
    t.string "codigo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_admin_ecosystem_pagamento_formas_on_codigo", unique: true
    t.index ["nome"], name: "index_admin_ecosystem_pagamento_formas_on_nome", unique: true
  end

  create_table "admin_ecosystem_paises", force: :cascade do |t|
    t.string "nome"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nome"], name: "index_admin_ecosystem_paises_on_nome", unique: true
    t.index ["sigla"], name: "index_admin_ecosystem_paises_on_sigla", unique: true
  end

  create_table "admin_ecosystem_parcelas_receber", force: :cascade do |t|
    t.integer "lancamento_receber_id", null: false
    t.integer "pagamento_forma_id"
    t.integer "pagamento_bandeira_id"
    t.boolean "entrada"
    t.integer "numero_parcela"
    t.date "data_emissao"
    t.date "data_vencimento"
    t.date "data_recebimento"
    t.date "data_desconto_ate"
    t.decimal "taxa_juros"
    t.decimal "taxa_multa"
    t.decimal "taxa_desconto"
    t.decimal "valor_juros"
    t.decimal "valor_multa"
    t.decimal "valor_desconto"
    t.decimal "valor_acrescimentos"
    t.decimal "valor_recebido"
    t.string "status"
    t.string "obs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lancamento_receber_id"], name: "index_admin_ecosystem_parcelas_receber_on_lancamento_receber_id"
    t.index ["pagamento_bandeira_id"], name: "index_admin_ecosystem_parcelas_receber_on_pagamento_bandeira_id"
    t.index ["pagamento_forma_id"], name: "index_admin_ecosystem_parcelas_receber_on_pagamento_forma_id"
  end

  create_table "admin_ecosystem_roles", force: :cascade do |t|
    t.string "nome"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_admin_ecosystem_roles_on_codigo", unique: true
  end

  create_table "admin_ecosystem_sexos", force: :cascade do |t|
    t.string "nome", null: false
    t.string "codigo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_admin_ecosystem_sexos_on_codigo", unique: true
    t.index ["nome"], name: "index_admin_ecosystem_sexos_on_nome", unique: true
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
  add_foreign_key "admin_ecosystem_clientes", "admin_ecosystem_estados_civis", column: "estado_civil_id"
  add_foreign_key "admin_ecosystem_clientes", "admin_ecosystem_localidades", column: "end_localidade_id"
  add_foreign_key "admin_ecosystem_clientes", "admin_ecosystem_nacionalidades", column: "nacionalidade_id"
  add_foreign_key "admin_ecosystem_clientes", "admin_ecosystem_sexos", column: "sexo_id"
  add_foreign_key "admin_ecosystem_clientes", "admin_ecosystem_ufs", column: "end_uf_id"
  add_foreign_key "admin_ecosystem_lancamentos_receber", "admin_ecosystem_clientes", column: "cliente_id"
  add_foreign_key "admin_ecosystem_lancamentos_receber", "admin_ecosystem_pagamento_bandeiras", column: "pagamento_bandeira_id"
  add_foreign_key "admin_ecosystem_lancamentos_receber", "admin_ecosystem_pagamento_formas", column: "pagamento_forma_id"
  add_foreign_key "admin_ecosystem_localidades", "admin_ecosystem_ufs", column: "uf_id"
  add_foreign_key "admin_ecosystem_parcelas_receber", "admin_ecosystem_clientes", column: "lancamento_receber_id"
  add_foreign_key "admin_ecosystem_parcelas_receber", "admin_ecosystem_pagamento_bandeiras", column: "pagamento_bandeira_id"
  add_foreign_key "admin_ecosystem_parcelas_receber", "admin_ecosystem_pagamento_formas", column: "pagamento_forma_id"
  add_foreign_key "admin_ecosystem_ufs", "admin_ecosystem_paises", column: "pais_id"
end
