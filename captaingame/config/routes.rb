Rails.application.routes.draw do
  #get 'game/index'
  resources :games
  root to: 'games#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
