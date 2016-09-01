Rails.application.routes.draw do

  resources :stories do
    resources :comments
  end

  resources :accounts
  resources :children
  resources :stories

  get '/home' => 'accounts#home', :as => "home"

  get 'password-reset' => 'accounts#password_reset'
  get 'password-reset-sent' => 'users#password_reset_sent'
  root 'accounts#home'

  get '/login' => 'session#new', :as => "login"
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy', :as => "logout"

end
