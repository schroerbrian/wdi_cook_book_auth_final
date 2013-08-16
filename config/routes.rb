CookBook::Application.routes.draw do
  resources :books, :recipes, :ingredients, :users, :sessions, :comments

  get '/signup' => 'users#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'

  root to: 'books#index'

  get '/data.json' => 'stats#data'
  get '/stats' => 'stats#stats'

  get '/users' => 'users#index'

end

