Rails.application.routes.draw do
  # resources :map_markers
  # resources :establishment_collections
  resources :state_collections, only: [:create, :index, :destroy]
  # resources :establishments
  resources :us_states, only: [:index]
  resources :users, only: [:create, :update, :destroy, :show]

  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
