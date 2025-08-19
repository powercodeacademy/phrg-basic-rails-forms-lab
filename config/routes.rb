Rails.application.routes.draw do
  resources :team, only: %i[show new create]
  # You need:
  # - A GET route to '/newteam' that goes to the teams controller new action
  # - A POST route to '/team' that goes to the teams controller create action
end
