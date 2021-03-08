Rails.application.routes.draw do
  root 'pages#homepage'

  namespace :api do
    namespace :v1 do 
      resources :farm, param: :id 
      resources :parcela, param: :id  
      resources :cultivo, param: :id 
      resources :intervencion, param: :id 
      resources :tratamiento, param: :id 
      resources :recoleccion, param: :id 
    end 
  end 

  get '*path', to: 'pages#homepage', via: :all
 end
