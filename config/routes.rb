Rails.application.routes.draw do
  get 'pages/homepage', to: 'pages#homepage'
  get 'pages/festa', to: 'pages#festa'
  get 'pages/30-maio', to: 'pages#casamento'
  get 'pages/nos', to: 'pages#nos'
  get 'pages/lista', to: 'pages#lista'
  resources :gifts, only: [:show] do
    resources :transactions, only: [:create]
  end
  root to: 'pages#countdown'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
