# This migration comes from admin_ecosystem (originally 20220910134346)
class CreateAdminEcosystemSexos < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_sexos do |t|
      t.string :nome, null:false
      t.string :codigo, null:false

      t.timestamps
    end
    add_index :admin_ecosystem_sexos, :codigo, unique: true
    add_index :admin_ecosystem_sexos, :nome, unique: true
  end
end
