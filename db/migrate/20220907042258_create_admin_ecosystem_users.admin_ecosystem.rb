# This migration comes from admin_ecosystem (originally 20220905174839)
class CreateAdminEcosystemUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_users do |t|
      t.string :username, null:false
      t.string :nome, null:false
      t.string :subnome #Pode ser usado para função

      t.string :matricula
      t.string :codigo

      t.string :email
      t.string :url
      t.string :foto
      t.string :info

      #Password
      t.string :password, null:false
      t.string :password_hash, null: false, default: ""
      t.string :password_salt

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at

      ## Lockable
      t.integer  :failed_attempts, default: 0, null: false 
      t.string   :unlock_token 
      t.datetime :locked_at

      t.timestamps
    end
    add_index :admin_ecosystem_users, :username, unique: true
    add_index :admin_ecosystem_users, :matricula, unique: true
    add_index :admin_ecosystem_users, :codigo, unique: true
    add_index :admin_ecosystem_users, :email, unique: true
  end
end
