class AddDateToSaidas < ActiveRecord::Migration[7.0]
  def change
    add_column :saidas, :date, :date
  end
end
