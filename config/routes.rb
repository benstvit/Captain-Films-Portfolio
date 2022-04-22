Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  devise_for :users
  root to: 'photos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :photos
  resources :bands
  resources :albums, only: %i[destroy new create]
  resources :tracks, only: %i[new create destroy]
  resources :contacts, only: [:new, :create]
end
