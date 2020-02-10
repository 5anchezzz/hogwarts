Rails.application.routes.draw do

  resources :pages
  resources :houses,    only: [:index, :show]
  resources :teachers,  only: [:index, :show]
  resources :students,  only: [:index, :show]

  get 'static/:permalink', to: 'pages#static', as: 'static'

  #get 'houses',      to: 'houses#index',  as: 'houses'
  #get 'houses/:id', to: 'houses#show',    as: 'house'

  root to: 'houses#index'

end
