class FritadeirasController < ApplicationController
  before_action :set_fritadeira, only: %i[ show edit update destroy ]

  # GET /fritadeiras or /fritadeiras.json
  def index
    @fritadeiras = Fritadeira.all.sort_by { |fritadeira| [fritadeira.cod_interno[/[^\d]+/], fritadeira.cod_interno[/\d+/].to_i] }
  end

  # GET /fritadeiras/1 or /fritadeiras/1.json
  def show
  end

  # GET /fritadeiras/new
  def new
    @fritadeira = Fritadeira.new
    
  end

  # GET /fritadeiras/1/edit
  def edit
  end

  # POST /fritadeiras or /fritadeiras.json
  def create
    @fritadeira = Fritadeira.new(fritadeira_params)

    respond_to do |format|
      if @fritadeira.save
        format.html { redirect_to fritadeiras_path, notice: "Fritadeira criada com sucesso!" }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fritadeira.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fritadeiras/1 or /fritadeiras/1.json
  def update
    respond_to do |format|
      if @fritadeira.update(fritadeira_params)
        format.html { redirect_to fritadeiras_path, notice: "Fritadeira alterada com sucesso." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fritadeiras/1 or /fritadeiras/1.json
  def destroy
    @fritadeira.destroy

    respond_to do |format|
      format.html { redirect_to fritadeiras_url, alert: "Fritadeira excluida com sucesso." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fritadeira
      @fritadeira = Fritadeira.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fritadeira_params
      params.require(:fritadeira).permit(:modelo, :cod_interno, :capacidade, :voltagem, :category_id, :classe_id)
    end
end
