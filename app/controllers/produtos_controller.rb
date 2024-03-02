class ProdutosController < ApplicationController
    require_dependency 'categorias'

    # Ação para exibir o formulário de criação de novo produto
    def new
        @produto = Produto.new
    end

    # Método para permitir os parâmetros necessários para criar um produto
    def produto_params
        params.require(:produto).permit(:nome, :modelo, :voltagem, :categoria_id, :descricao, :preco_compra, :cod_interno)
    end

    # Ação para criar um novo produto
    def create
        @produto = Produto.new(produto_params)
      
        if @produto.save
          puts @produto.errors.full_messages
          redirect_to root_path, notice: 'Produto criado com sucesso.'
        else
          # Se a validação falhar, exiba os erros no console
          puts @produto.errors.full_messages
      
          # Renderize novamente o formulário de criação de produtos com os erros
          render :new
        end
    end

end
