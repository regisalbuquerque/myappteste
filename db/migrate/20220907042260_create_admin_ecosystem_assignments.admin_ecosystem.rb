# This migration comes from admin_ecosystem (originally 20220905175306)
class CreateAdminEcosystemAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_assignments do |t|
      #t.references :user, null: false, foreign_key: true
      #t.references :role, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: { to_table: :admin_ecosystem_users }
      t.references :role, null: false, foreign_key: { to_table: :admin_ecosystem_roles }


      t.timestamps
    end
    add_index :admin_ecosystem_assignments, [:user_id, :role_id], unique: true, name: 'admin_ecosystem_assignment_index1'
  end
end
