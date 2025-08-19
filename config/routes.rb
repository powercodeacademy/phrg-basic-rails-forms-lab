Rails.application.routes.draw do
  resources :teams, only: %i[new create]
end
