class SaidasController < ApplicationController
  def new
    @estoque = Estoque.find(params[:estoque_id])
    @fritadeira = @estoque.fritadeira
    @saida = Saida.new
    @fritadeira_info = "#{@fritadeira.cod_interno} - #{@fritadeira.voltagem}"
  end

  def create
    @saida = Saida.new(saida_params)
    if @saida.save
      @estoque = Estoque.find(saida_params[:estoque_id])
      q_remover = saida_params[:q_remover].to_i
      @estoque.q_atual -= q_remover
      @estoque.save
      redirect_to estoques_path, notice: "Saida de mercadoria adicionada com sucesso!"
    else
      render :new
    end
  end

  private

  def saida_params
    params.require(:saida).permit(:q_remover, :origem_saida, :date, :estoque_id, :fritadeira_id)
  end
end
