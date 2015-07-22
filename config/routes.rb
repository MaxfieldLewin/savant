Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do

    get "/search", to: "search#search"

    resource :session, only: [:show, :create, :destroy]
    resources :users, except: [:new, :edit]
    resources :artists, except: [:create, :new, :edit]
    resources :songs, except: [:new, :edit]
    resources :song_fragments, except: [:new, :edit]
    resources :annotations, only: [:create, :update]
    resources :comments, except: [:new, :edit]
  end

  get "auth/:provider/callback", to: "api/sessions#omniauth"

  root to: "static_pages#root"

end
