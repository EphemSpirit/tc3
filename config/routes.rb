Rails.application.routes.draw do
  devise_for :users

  resource :dashboard, only: [:new, :create, :destroy]

  resources :meetings, only: [:show]

  resources :journals do
    resources :tags, module: :journals
  end

  resources :photos, except: [:index, :new, :create] do
    resources :tags, module: :photos
  end

  get '/tag_search', to: 'tags#search'

  get '/my_dashboard', to: 'dashboards#show'

  get '/my_calendar', to: 'meetings#index'
  get '/new_meeting', to: 'meetings#new'
  post '/new_meeting', to: 'meetings#create'

  get '/my_photos', to: 'photos#index'
  get '/new_photo', to: 'photos#new'
  post '/new_photo', to: 'photos#create'

  root 'static_pages#home'
end
