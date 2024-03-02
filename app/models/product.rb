class Product < ApplicationRecord
  belongs_to :category

  validates :nome, :modelo, :cod_interno, :voltagem, :descricao, presence: true
  validates :cod_interno, uniqueness: true
  validates :voltagem, inclusion: { in: %w[110v 220v] }
end
