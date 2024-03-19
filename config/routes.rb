Rails.application.routes.draw do
  get 'saidas/new'
  get 'saidas/create'
  get 'entradas/new'
  get 'entradas/create'
  resources :fritadeiras

  #index da pagina de dashboard
  root 'dashboard#index'

  ### Rotas Category ###
  resources :categories

  ### Rotas Fritadeiras ###
  resources :fritadeiras

  ### Rotas estoque ###
  resources :estoques

  ### Entradas ###
  resources :entradas

  ### Saidas ###
  resources :saidas

 
end
