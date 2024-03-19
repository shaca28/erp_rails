class CreateFritadeiras < ActiveRecord::Migration[7.0]
  def change
    create_table :fritadeiras do |t|
      t.string :nome
      t.string :modelo
      t.string :cod_interno
      t.integer :capacidade
      t.integer :voltagem
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
