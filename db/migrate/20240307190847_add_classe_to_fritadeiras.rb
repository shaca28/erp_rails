class AddClasseToFritadeiras < ActiveRecord::Migration[7.0]
  def change
    add_reference :fritadeiras, :classe, null: false, foreign_key: true
  end
end
