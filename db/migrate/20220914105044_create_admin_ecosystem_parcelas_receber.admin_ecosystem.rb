# This migration comes from admin_ecosystem (originally 20220910231557)
class CreateAdminEcosystemParcelasReceber < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_parcelas_receber do |t|
      t.references :lancamento_receber, null: false, foreign_key: { to_table: :admin_ecosystem_clientes }
      t.references :pagamento_forma, null: true, foreign_key: { to_table: :admin_ecosystem_pagamento_formas }
      t.references :pagamento_bandeira, null: true, foreign_key: { to_table: :admin_ecosystem_pagamento_bandeiras }

      t.boolean :entrada
      t.integer :numero_parcela

      t.date :data_emissao
      t.date :data_vencimento
      t.date :data_recebimento
      t.date :data_desconto_ate

      t.decimal :taxa_juros
      t.decimal :taxa_multa
      t.decimal :taxa_desconto

      t.decimal :valor_juros
      t.decimal :valor_multa
      t.decimal :valor_desconto
      t.decimal :valor_acrescimentos
            
      t.decimal :valor_recebido

      t.string :status
      t.string :obs

      t.timestamps
    end
  end
end
