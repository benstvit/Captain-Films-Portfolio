Rails.application.routes.draw do
  devise_for :users
  root to: 'photos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :photos
  resources :bands, only: %i[new create index show delete]
  resources :albums, only: %i[delete new create]
  resources :tracks, only: %i[new create delete]
end
