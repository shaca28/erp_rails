class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    # Ação para criar um novo produto
    def create
        @product = Product.new(product_params)

        if @product.save
        redirect_to products_path, notice: 'Produto criado com sucesso.'
        else
        render :new
        end
    end

    def update
        if @product.update(product_params)
          redirect_to @product, notice: 'Produto atualizado com sucesso.'
        else
          render :edit
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_url, notice: 'Produto excluído com sucesso.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_product
        @product = Product.find(params[:id])
    end

    # Método para permitir os parâmetros necessários para criar um produto
    def product_params
        params.require(:product).permit(:nome, :modelo, :voltagem, :category_id, :descricao, :cod_interno)
    end
end
