Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items, only: [:index, :show] do
    resources :order_items, only: [:create, :update, :destroy]
  end
  resources :orders, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
