# This migration comes from admin_ecosystem (originally 20220910022150)
class CreateAdminEcosystemLocalidades < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_localidades do |t|
      t.string :nome
      t.references :uf, null: false, foreign_key: { to_table: :admin_ecosystem_ufs }

      t.timestamps
    end
    add_index :admin_ecosystem_localidades, [:uf_id, :nome], unique: true
  end
end
