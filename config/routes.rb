CookBook::Application.routes.draw do
  resources :books, :recipes, :ingredients, :users, :sessions

  get '/signup' => 'users#new'
  #match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'
  #delete '/signout' => 'sessions#destroy'

  root to: 'books#index'
end

