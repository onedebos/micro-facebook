Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  devise_for :users
  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show', as: 'user'
  root to: 'posts#index'

  resources :posts do
    resources :likes
  end
end