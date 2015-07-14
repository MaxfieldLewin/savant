Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :desstroy]

  root to: "static_pages#root"
end
