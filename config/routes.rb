Rails.application.routes.draw do
  # resources :map_markers
  # resources :establishment_collections
  # resources :state_collections
  # resources :establishments
  # resources :us_states
  resources :users, only: [:create]

  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
