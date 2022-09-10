# This migration comes from admin_ecosystem (originally 20220910134535)
class CreateAdminEcosystemNacionalidades < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_nacionalidades do |t|
      t.string :nome, null:false
      t.string :codigo, null:false

      t.timestamps
    end
    add_index :admin_ecosystem_nacionalidades, :codigo, unique: true
    add_index :admin_ecosystem_nacionalidades, :nome, unique: true
  end
end
