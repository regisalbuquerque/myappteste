# This migration comes from admin_ecosystem (originally 20220910144104)
class CreateAdminEcosystemPagamentoBandeiras < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_pagamento_bandeiras do |t|
      t.string :nome, null:false
      t.string :codigo, null:false

      t.timestamps
    end
    add_index :admin_ecosystem_pagamento_bandeiras, :codigo, unique: true
    add_index :admin_ecosystem_pagamento_bandeiras, :nome, unique: true
  end
end
