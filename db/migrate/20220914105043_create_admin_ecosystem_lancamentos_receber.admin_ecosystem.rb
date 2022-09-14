# This migration comes from admin_ecosystem (originally 20220910231543)
class CreateAdminEcosystemLancamentosReceber < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_lancamentos_receber do |t|
      t.references :cliente, null: true, foreign_key: { to_table: :admin_ecosystem_clientes }
      t.references :pagamento_forma, null: true, foreign_key: { to_table: :admin_ecosystem_pagamento_formas }
      t.references :pagamento_bandeira, null: true, index: { name: 'admin_lancamentos_receber_fk_bandeira' }, foreign_key: { to_table: :admin_ecosystem_pagamento_bandeiras }
      t.string :descricao
      t.decimal :valor
      t.decimal :desconto_porcentagem
      t.decimal :desconto_valor
      t.decimal :juros
      t.decimal :multa
      t.decimal :taxa
      t.decimal :acrescimos
      t.decimal :valor_total

      t.boolean :parcelado
      t.boolean :parcelado_mensal
      t.integer :parcelas_qtde
      t.integer :parcelas_dia_fixo
      t.integer :parcelas_intervalo_dias
      t.decimal :valor_entrada
      t.decimal :valor_parcela
      t.date :data_lancamento
      t.date :data_vencimento_entrada
      t.date :data_vencimento_primeira
      t.string :status
      t.text :obs

      t.timestamps
    end
  end
end
