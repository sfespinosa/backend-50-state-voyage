Rails.application.routes.draw do
  # resources :map_markers
  resources :establishment_collections, only: [:index, :create, :destroy]
  resources :state_collections, only: [:create, :index, :destroy]
  resources :establishments, only: [:index, :create]
  resources :us_states, only: [:index]
  resources :users, only: [:create, :update, :destroy, :show]

  post '/login', to: 'users#login'
  get '/persist', to: 'users#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
