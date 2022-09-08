class CreateExemplo1s < ActiveRecord::Migration[7.0]
  def change
    create_table :exemplo1s do |t|
      t.string :nome
      t.integer :idade
      t.string :cpf

      t.timestamps
    end
  end
end
