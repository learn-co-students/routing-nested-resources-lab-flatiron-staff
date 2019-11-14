Rails.application.routes.draw do
  resources :artists, only: [:index, :show] do 
    resources :songs, only: [:index, :show]
  end

  resources :artists, except: [:index, :show]

  resources :songs
end
