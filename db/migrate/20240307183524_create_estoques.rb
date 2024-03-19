class CreateEstoques < ActiveRecord::Migration[7.0]
  def change
    create_table :estoques do |t|
      t.integer :q_atual
      t.integer :q_min
      t.integer :q_max
      t.references :fritadeira, null: false, foreign_key: true

      t.timestamps
    end
  end
end
