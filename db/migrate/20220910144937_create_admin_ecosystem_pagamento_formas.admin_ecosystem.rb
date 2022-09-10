# This migration comes from admin_ecosystem (originally 20220910144047)
class CreateAdminEcosystemPagamentoFormas < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_pagamento_formas do |t|
      t.string :nome, null:false
      t.string :codigo, null:false

      t.timestamps
    end
    add_index :admin_ecosystem_pagamento_formas, :codigo, unique: true
    add_index :admin_ecosystem_pagamento_formas, :nome, unique: true
  end
end
