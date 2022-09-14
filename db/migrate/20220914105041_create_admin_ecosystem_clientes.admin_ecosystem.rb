# This migration comes from admin_ecosystem (originally 20220910225145)
class CreateAdminEcosystemClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_clientes do |t|
      t.string :nome, null: false
      t.date :data_nascimento
      t.references :nacionalidade, null: true, foreign_key: { to_table: :admin_ecosystem_nacionalidades }
      t.references :sexo, null: true, foreign_key: { to_table: :admin_ecosystem_sexos }
      t.references :estado_civil, null: true, foreign_key: { to_table: :admin_ecosystem_estados_civis }
      t.string :profissao
      t.string :rg
      t.string :cpf
      t.string :mae_nome
      t.string :pai_nome
      t.string :contato_telefone
      t.string :contato_celular
      t.string :contato_email
      t.string :end_cep
      t.string :end_logradouro
      t.string :end_bairro
      t.string :end_numero
      t.references :end_uf, null: true, foreign_key: {to_table: :admin_ecosystem_ufs}
      t.references :end_localidade, null: true, foreign_key: {to_table: :admin_ecosystem_localidades}
      t.string :end_complemento
      t.string :status
      t.string :status_financeiro
      t.text :obs

      t.timestamps
    end
  end
end
