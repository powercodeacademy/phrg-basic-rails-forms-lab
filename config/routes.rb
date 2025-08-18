Rails.application.routes.draw do
  get '/newteam', to: 'teams#new'
  resources :teams, only: :create
end
