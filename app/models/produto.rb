class Produto < ApplicationRecord
  belongs_to :categorias, class_name: 'Categorias', foreign_key: 'categoria_id'

  validates :nome, :modelo, :voltagem, :descricao, :preco_compra, :cod_interno, presence: true
  validates :voltagem, inclusion: { in: %w[110v 220v] }
end
