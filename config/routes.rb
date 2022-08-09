Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, only: [:index, :show] do
    resources :order_items, only: [:create]
  end
  # resources :order_items
  get 'carts', to: 'carts#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
