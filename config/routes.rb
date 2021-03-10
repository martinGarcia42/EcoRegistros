Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do 
      resources :farms, param: :id 
      resources :parcelas 
      resources :cultivos
      resources :intervencions
      resources :tratamientos
      resources :recoleccions
    end 
  end 

  get '*path', to: 'pages#index', via: :all
 end
