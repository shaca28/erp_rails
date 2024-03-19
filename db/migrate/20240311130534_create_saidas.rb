class CreateSaidas < ActiveRecord::Migration[7.0]
  def change
    create_table :saidas do |t|
      t.integer :q_remover
      t.string :origem_saida
      t.references :estoque, null: false, foreign_key: true
      t.references :fritadeira, null: false, foreign_key: true

      t.timestamps
    end
  end
end
