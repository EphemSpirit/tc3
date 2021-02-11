Rails.application.routes.draw do
  devise_for :users
  resources :journals do
    resources :tags, module: :journals
  end
  get '/tag_search', to: 'tags#search'
  root 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
