Rails.application.routes.draw do
  get 'pages/homepage', to: 'pages#homepage'
  get 'pages/missa', to: 'pages#missa'
  get 'pages/festa', to: 'pages#festa'
  root to: 'pages#countdown'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
