Rails.application.routes.draw do
  get 'list_comments/create'
  get 'list_comments/destroy'
  devise_for :admins
  root to: 'homes#top'
  get "homes/about" => "homes#about"
  resources :blogs
  resources :homes, only:[:about]
  resources :members

  resources :lists do
    resources :list_comments, only: [:create, :destroy]
  end
  post "lists/confirm" => "lists#confirm"
end