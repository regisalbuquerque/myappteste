# This migration comes from admin_ecosystem (originally 20220910020216)
class CreateAdminEcosystemPaises < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_paises do |t|
      t.string :nome
      t.string :sigla

      t.timestamps
    end
    add_index :admin_ecosystem_paises, :nome, unique: true
    add_index :admin_ecosystem_paises, :sigla, unique: true
  end
end
