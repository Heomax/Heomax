Rails.application.routes.draw do
  
  get 'landing/index'
  devise_for :users
  get 'subscriptions/index'
  get 'home/index'

  resources :subscriptions
  root to: "subscriptions#index"
end
