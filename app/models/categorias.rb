class Categorias < ApplicationRecord
    self.table_name = 'categorias'
    
    has_many :produtos
end
