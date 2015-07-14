Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]

  root to: "static_pages#root"
end
