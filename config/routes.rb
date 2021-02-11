Rails.application.routes.draw do
  devise_for :users

  resource :dashboard, only: [:new, :create, :destroy]

  resources :journals do
    resources :tags, module: :journals
  end

  get '/tag_search', to: 'tags#search'

  get '/my_dashboard', to: 'dashboards#show'

  root 'static_pages#home'
end
