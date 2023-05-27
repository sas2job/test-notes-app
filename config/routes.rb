Rails.application.routes.draw do
  devise_for :users
  resources :notes, only: [:index]
  root to: 'notes#index'
end
