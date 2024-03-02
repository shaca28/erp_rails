class CategoriasController < ApplicationController
    #funções da pagina de criação da nova categoria

    #Pagina que exibe todas categorias criadas
    def index
        @categorias = Categorias.all
    end    

    #exibição do formulario para criação da categoria
    def new
        #carregando a função para criação da categoria
        @categoria = Categorias.new
    end

    def categoria_params
        #Permite utilizar as infos do formulario para criação da categoria
        params.require(:categorias).permit(:nome)
    end

    #Função para criar uma nova categoria no formulario
    def create
        #carregando as categorias e os parametros que ela utiliza
        @categoria = Categorias.new(categoria_params)
        #Se os parametros estiverem corretos, salvar a categoria
        if @categoria.save
          #Redirecionará para pagina inicial, e enviar uma mensagem de sucesso  
          redirect_to categorias_index_path, notice: 'Categoria criada com sucesso.'  
        else
          #Se estiver errado voltar para pagina de criação de categoria  
          render :new
        end
    end

    def edit
        #Identifica o id da categoria para disponibilizar na pagina de ediçao
        @categoria = Categorias.find(params[:id])
    end

    def update
        #Identifica o id da categoria para visualizar individualmente
        @categoria = Categorias.find(params[:id])
        #atualiza a categoria de acordo com os dados passados no formulario
        if @categoria.update(categoria_params)
        #Redireciona para a pagina de categorias com a msg de sucesso    
        redirect_to categorias_index_path, notice: 'Categoria atualizada com sucesso.'
        else
        #Mantem na página de de edição caso não dê certo    
        render :edit
        end
    end

    def destroy
        #Identifica o id da categoria para visualizar individualmente
        @categoria = Categorias.find(params[:id])
        #Deleta a categoria de acordo com os dados passados no formulario
        if @categoria.destroy
          #Redireciona para a pagina de categorias com a msg de sucesso   
          redirect_to categorias_index_path, notice: 'Categoria excluída com sucesso.'
        else
            #Redireciona para a pagina de categorias com a msg de erro
          redirect_to categorias_index_path, alert: 'Erro ao excluir a categoria.'
        end
    end
    
    
end
