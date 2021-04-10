Rails.application.routes.draw do
  root to: 'homes#index'
  resources :homes, :only => [:index]
  resources :members, :only => [:index, :new, :create, :edit, :update, :destroy]
  resources :blogs, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
end
