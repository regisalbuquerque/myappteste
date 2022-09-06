# This migration comes from admin_ecosystem (originally 20220905175140)
class CreateAdminEcosystemRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_roles do |t|
      t.string :nome
      t.string :codigo

      t.timestamps
    end
    add_index :admin_ecosystem_roles, :codigo, unique: true
  end
end
