Rails.application.routes.draw do
  root 'users#index'
  resources :users, only: [:new, :create, :edit, :update]
end
