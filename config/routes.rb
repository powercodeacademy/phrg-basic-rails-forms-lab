Rails.application.routes.draw do
  resources :teams, only: %i[show new create]
end
