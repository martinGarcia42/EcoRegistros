Rails.application.routes.draw do
  namespace :api do
    get 'auth/index'
  end
  devise_for :employees, defaults: { format: :json}
  root 'pages#index'

  namespace :api, defaults: { format: :json } do
    scope :auth do
      get 'is_signed_in', to: 'auth#index'
    end
    namespace :v1 do 
      resources :farms, param: :id 
      resources :parcelas 
      resources :cultivos
      resources :intervencions
      resources :tratamientos
      resources :recoleccions
    end 
  end 

  #get '*path', to: 'pages#index', via: :all
 end
