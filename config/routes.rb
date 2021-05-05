Rails.application.routes.draw do
  root "bots#index"
  resources :bots, only: [:index, :show, :new, :create]
end
