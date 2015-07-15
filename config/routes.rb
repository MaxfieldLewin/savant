Rails.application.routes.draw do

  root to: "static_pages#root"
  # resources :users, only: [:new, :create, :show]
  # resource :session, only: [:new, :create, :destroy]
  #
  # resources :artists #, only: [:new, :edit, :create, :update]
  # resources :songs

  namespace :api, defaults: {format: :json} do
    resources :users, except: [:new, :edit]
    resources :artists, except: [:new, :edit]
    resources :songs, except: [:new, :edit]
  end

end
