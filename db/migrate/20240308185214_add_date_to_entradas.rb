class AddDateToEntradas < ActiveRecord::Migration[7.0]
  def change
    add_column :entradas, :date, :date
  end
end
