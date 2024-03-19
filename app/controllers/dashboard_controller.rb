class DashboardController < ApplicationController
  def index
    @estoques_em_baixa = Estoque.where("q_atual < q_min")
    # Contagem das vendas por modelo e voltagem
    vendas_por_modelo_e_voltagem = Saida.where(origem_saida: 'Venda').group(:fritadeira_id).sum(:q_remover)

    # Ordenando pelo modelo mais vendido
    @vendas_por_modelo_e_voltagem = vendas_por_modelo_e_voltagem.sort_by { |_, quantidade| -quantidade }

   
  end
end
