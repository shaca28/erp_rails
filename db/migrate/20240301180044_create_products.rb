class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nome
      t.string :modelo
      t.string :cod_interno
      t.references :category, null: false, foreign_key: true
      t.string :voltagem
      t.text :descricao

      t.timestamps
    end
  end
end
