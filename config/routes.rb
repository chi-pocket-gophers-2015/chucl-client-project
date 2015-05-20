Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :movies, only: [:show] do
    resources :reviews, except: [:index]
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :comments, only: [:new, :create, :edit, :update]
  resources :genre, only: [:index, :show]
  resources :votes, only: [:new, :create, :update]
  root 'welcome#index'
end
