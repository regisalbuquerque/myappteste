# This migration comes from admin_ecosystem (originally 20220910134911)
class CreateAdminEcosystemEstadosCivis < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_estados_civis do |t|
      t.string :nome, null:false
      t.string :codigo, null:false

      t.timestamps
    end
    add_index :admin_ecosystem_estados_civis, :codigo, unique: true
    add_index :admin_ecosystem_estados_civis, :nome, unique: true
  end
end
