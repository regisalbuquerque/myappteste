class CreateExemplo2s < ActiveRecord::Migration[7.0]
  def change
    create_table :exemplo2s do |t|
      t.string :nome
      t.integer :numero
      t.string :codigo

      t.timestamps
    end
  end
end
