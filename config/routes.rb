Rails.application.routes.draw do

  root to: "static_pages#root"

  resource :session, only: [:create, :destroy]

  namespace :api, defaults: {format: :json} do
    resources :users, except: [:new, :edit]
    resources :artists, except: [:new, :edit]
    resources :songs, except: [:new, :edit]
  end

end
