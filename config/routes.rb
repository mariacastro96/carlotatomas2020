Rails.application.routes.draw do
  get '/homepage', to: 'pages#homepage'
  # get '/festa', to: 'pages#festa'
  get '/30-maio', to: 'pages#casamento'
  get '/missal', to: 'pages#download_missal'
  get '/nos', to: 'pages#nos'
  get '/lista', to: 'pages#lista'
  get '/casa', to: 'gifts#casa'
  get '/info', to: 'pages#info'
  resources :gifts, only: [:index, :show] do
    resources :transactions, only: [:index,  :create]
  end
  resources :transactions, only: :update
  root to: 'pages#homepage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
