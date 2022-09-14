# This migration comes from admin_ecosystem (originally 20220910230129)
class CreateAdminEcosystemHistoricos < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_ecosystem_historicos do |t|
      t.date :data, null: false
      t.text :historico, null: false

      t.references :historical, polymorphic: true

      t.timestamps
    end
  end
end
