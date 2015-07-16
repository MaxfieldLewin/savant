Rails.application.routes.draw do

  root to: "static_pages#root"


  namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, except: [:new, :edit]
    resources :artists, except: [:new, :edit]
    resources :songs, except: [:new, :edit]
    resources :song_fragments, except: [:new, :edit]
  end

end
