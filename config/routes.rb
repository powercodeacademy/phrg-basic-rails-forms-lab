Rails.application.routes.draw do
  get '/newteam', to: 'teams#new'
  post '/team', to: 'teams#create'
end
