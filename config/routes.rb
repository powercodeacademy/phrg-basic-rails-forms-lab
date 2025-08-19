Rails.application.routes.draw do
  resources :teams
  get '/newteam', to: 'teams#new'
  post '/team', to: 'teams#create'
  get '/team/:id', to: 'teams#show'
end
