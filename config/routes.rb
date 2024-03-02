Rails.application.routes.draw do

  #index da pagina de dashboard
  root 'dashboard#index'

  ### Rotas Category ###
  resources :categories

  ### Rotas Product ###
  resources :products



  #### Rotas Categorias ####
  #Rota para visualização de todas categorias
  get '/categorias', to: 'categorias#index', as: 'categorias_index'
  #Rota para exibição de formulario de cadastro de categoria
  get '/categorias/new', to: 'categorias#new', as: 'new_categoria'
  #Rota para enviar o formulário com as infos capturadas para criação da nova categoria
  post '/categorias/create', to: 'categorias#create', as: 'categorias_create'
  #Botao de edição das categorias
  get 'categorias/:id/edit', to: 'categorias#edit', as: 'edit_categoria'
  #Rota para atualizar a categoria
  patch '/categorias/:id/update', to: 'categorias#update', as: 'categoria'
  #Rota para deletar a categoria desejada
  delete '/categorias/:id', to: 'categorias#destroy', as: 'delete_categoria'

  #### Rotas produtos ####
  get '/produtos', to: 'produtos#index', as: 'produtos_index'
  get '/produtos/new', to: 'produtos#new', as: 'new_produto'
  post '/produtos/create', to: 'produtos#create', as: 'produtos_create'

  
end
