Rails.application.routes.draw do
  resources :accessories
  resources :arenas
  resources :characters
  #get 'static_pages/index'
  root to: "static_pages#index"
  
  get '/arenas/:id/fight', to: 'arenas#fight', as: :start_fight 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
