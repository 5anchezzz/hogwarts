Rails.application.routes.draw do
  resources :houses, only: [:index, :show]

  #get 'houses',      to: 'houses#index',  as: 'houses'
  #get 'houses/:id', to: 'houses#show',    as: 'house'

  root to: 'houses#index'

end
