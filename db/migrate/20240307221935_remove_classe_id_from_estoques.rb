class RemoveClasseIdFromEstoques < ActiveRecord::Migration[7.0]
  def change
    remove_column :estoques, :classe_id, :integer
  end
end
