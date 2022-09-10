# This migration comes from admin_ecosystem (originally 20220910021946)
class CreateAdminEcosystemUfs < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_ufs do |t|
      t.string :nome
      t.string :sigla
      t.references :pais, null: false, foreign_key: { to_table: :admin_ecosystem_paises }

      t.timestamps
    end
    add_index :admin_ecosystem_ufs, [:pais_id, :nome], unique: true
    add_index :admin_ecosystem_ufs, [:pais_id, :sigla], unique: true
  end
end
