Rails.application.routes.draw do
  get '/newteam', to: 'teams#new'
  post '/teams', to: 'teams#create'
end
