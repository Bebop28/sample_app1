Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  root "static_page#home"
  get '/about', to: 'static_page#about'
  get '/help', to: 'static_page#help'
  get '/contact', to: 'static_page#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#crete'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]


end