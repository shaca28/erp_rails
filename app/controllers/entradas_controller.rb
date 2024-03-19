class EntradasController < ApplicationController


  def new
    @estoque = Estoque.find(params[:estoque_id])
    @fritadeira = @estoque.fritadeira
    @entrada = Entrada.new
    @fritadeira_info = "#{@fritadeira.cod_interno} - #{@fritadeira.voltagem}"
  end

  def create
    @entrada = Entrada.new(entrada_params)
    if @entrada.save
      @estoque = Estoque.find(entrada_params[:estoque_id])
      quantidade_adicionada = entrada_params[:quantidade_adicionada].to_i
      @estoque.q_atual += quantidade_adicionada
      @estoque.save
      redirect_to estoques_path, notice: "Entrada de mercadoria adicionada com sucesso!"
    else
      render :new
    end
  end

  private

  def entrada_params
    params.require(:entrada).permit(:quantidade_adicionada, :origem_entrada, :date, :estoque_id, :fritadeira_id)
  end
  



end
