class RemoveNomeFromFritadeiras < ActiveRecord::Migration[7.0]
  def change
    remove_column :fritadeiras, :nome, :string
  end
end
