Rails.application.routes.draw do
  root to: "home#index"
  get 'home/index'
  devise_for :users
  get '/home' => 'home#home'
  get '/auth/google_oauth2/callback' => 'home#omniauth'
  get '/auth/facebook/callback' => 'home#omniauth'
  get '/auth/twitter/callback' => 'home#omniauth'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end








# root to: "home#index"
#   get 'home/index'
#   devise_for :users
#   get '/home' => 'home#home'
#   get '/auth/google_oauth2/callback' => 'home#omniauth'
#   get '/auth/facebook/callback' => 'home#omniauth'
#   # get '/auth/twitter/callback' => 'home#omniauth'