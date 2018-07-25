Rails.application.routes.draw do
  get 'subscriptions/index'
  get 'home/index'

  resources :subscriptions
  root to: "subscriptions#index"
end
