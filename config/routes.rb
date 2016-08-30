Rails.application.routes.draw do

  resources :accounts
  resources :children
  root 'accounts#index'

  get '/login' => 'session#new', :as => "login"
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy', :as => "logout"

end
