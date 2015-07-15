Rails.application.routes.draw do

  root to: "static_pages#root"
  resources :users, only: [:new, :create, :show]
  resource :session, only: [:new, :create, :destroy]

  resources :artists #, only: [:new, :edit, :create, :update]
  resources :songs

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:new, :create, :show]
    resources :artists, except: [:new, :create]
    resources :songs, except: [:new, :create ]
  end

end
