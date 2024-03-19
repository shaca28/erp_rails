class CreateEntradas < ActiveRecord::Migration[7.0]
  def change
    create_table :entradas do |t|
      t.integer :quantidade_adicionada
      t.string :origem_entrada
      t.references :estoque, null: false, foreign_key: true
      t.references :fritadeira, null: false, foreign_key: true

      t.timestamps
    end
  end
end
