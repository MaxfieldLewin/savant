Rails.application.routes.draw do

  root to: "static_pages#root"
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]

  resources :artists, only: [:new, :edit, :create, :update]

  namespace :api do
    resources :artists, except: [:new, :edit]
  end

end
