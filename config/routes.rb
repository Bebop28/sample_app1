Rails.application.routes.draw do
  get 'users/new'

  root "static_page#home"
  get '/about', to: 'static_page#about'
  get '/help', to: 'static_page#help'
  get '/contact', to: 'static_page#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#crete'
  resources :users
end