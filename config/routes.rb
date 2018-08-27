Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/songs', to: 'songs#index'
  root 'songs#index'
  resources :songs, only: [:index]
  resources :artists, only: [:new, :create, :index]
  resources :playlists, only: [:new]
end
