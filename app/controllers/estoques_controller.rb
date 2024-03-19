class EstoquesController < ApplicationController
    def index
      @estoques = Estoque.all
      @fritadeiras = Fritadeira.all
    end
    
    def new
        @estoque = Estoque.new
        @fritadeiras = Fritadeira.all
    end
    
    def create
      @estoque = Estoque.new(estoque_params)
      fritadeira_id = params[:estoque][:fritadeira_id]
      @estoque.fritadeira = Fritadeira.find(fritadeira_id)
  
      respond_to do |format|
        if @estoque.save
          format.html { redirect_to estoques_path, notice: "Fritadeira adicionada ao estoque!" }
        else
          format.html { render :new }
        end
      end
    end

    def destroy
      @estoque = Estoque.find(params[:id])
      @estoque.destroy
      redirect_to estoques_path, alert: 'Produto removido do controle de estoque.'
    end

    def edit
      @estoque = Estoque.find(params[:id])
    end 

    def update
      @estoque = Estoque.find(params[:id])
      if @estoque.update(estoque_params)
        redirect_to estoques_path, notice: 'Categoria atualizada com sucesso.'
      else
        render :edit
      end    
    end
    
    def show
    end

    

    


      
    private
  
    def estoque_params
      params.require(:estoque).permit(:q_atual, :q_min, :q_max, :fritadeira_id)
    end
end
