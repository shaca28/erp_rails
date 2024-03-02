class CreateProdutos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :modelo
      t.string :voltagem, null:false, default: '110v', limit: 4
      t.references :categorias, null: false, foreign_key: true
      t.text :descricao
      t.decimal :preco_compra
      t.string :cod_interno

      t.timestamps
    end
  end
end
