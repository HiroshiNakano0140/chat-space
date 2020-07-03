Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update, :get]
  resources :groups, only: [:new, :create, :edit, :update, :get] do
    resources :messages, only: [:index, :create, :get]
  end
end
