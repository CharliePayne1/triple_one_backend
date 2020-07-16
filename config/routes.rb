Rails.application.routes.draw do
  
  resources :cases, only: [:index, :show, :create, :edit]

  post '/login', to: 'doctors#login'
  get '/profile', to: 'doctors#profile'

end
