Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/songs', to: 'songs#index'
  root 'songs#index'
  resources :songs, only: [:index]
  resources :artists, only: [:new, :create, :index], shallow: true do
    resources :songs
  end
  
  resources :playlists, only: [:new]

end
#   resources :artists, shallow: true do
#     recources :songs
#   end
#   resources :songs, only: [:index]
# end
#
# resources :jobs do
#   resources :comments, only: [:new, :create]
# end
