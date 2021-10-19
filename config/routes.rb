Rails.application.routes.draw do

  devise_for :admins
  root to: 'homes#top'
  get "homes/about" => "homes#about"
  resources :blogs
  resources :homes, only:[:about]
  resources :members
  resources :bokuyasu_lists
  post "bokuyasu_lists/confirm" => "bokuyasu_lists#confirm"

  resources :lists do
    resources :list_comments, only: [:create, :destroy]
  end
  post "lists/confirm" => "lists#confirm"
end