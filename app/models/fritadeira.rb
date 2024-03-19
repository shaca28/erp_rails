class Fritadeira < ApplicationRecord
  belongs_to :category

  enum capacidade: { '3 litros' => 3, '5 litros' => 5, '7 litros' => 7, '10 litros' => 10, '12 litros' => 12, '14 litros' => 14 }
  enum voltagem: { '110v' => 0, '220v' => 1 }


end
