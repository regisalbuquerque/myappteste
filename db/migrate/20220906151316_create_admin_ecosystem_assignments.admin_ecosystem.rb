# This migration comes from admin_ecosystem (originally 20220905175306)
class CreateAdminEcosystemAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_assignments do |t|
      t.references :admin_ecosystem_user, null: false, foreign_key: true
      t.references :admin_ecosystem_role, null: false, foreign_key: true


      t.timestamps
    end
    add_index :admin_ecosystem_assignments, [:admin_ecosystem_user_id, :admin_ecosystem_role_id], unique: true, name: 'admin_ecosystem_assignment_index1'
  end
end
