class Estoque < ApplicationRecord
  belongs_to :fritadeira
  has_many :entrada, dependent: :destroy
  has_many :saida, dependent: :destroy



end
