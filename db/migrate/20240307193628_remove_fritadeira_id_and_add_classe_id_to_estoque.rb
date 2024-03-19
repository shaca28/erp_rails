class RemoveFritadeiraIdAndAddClasseIdToEstoque < ActiveRecord::Migration[7.0]
  def change
    remove_column :estoques, :fritadeira_id, :integer
    add_column :estoques, :classe_id, :integer
  end
end
