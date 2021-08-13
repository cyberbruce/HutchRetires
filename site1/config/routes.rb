Rails.application.routes.draw do

  
  root to: 'messages#index'

  get 'home' => 'home#index'

  resources :messages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
