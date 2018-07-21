Rails.application.routes.draw do
  get 'subcriptions/index'
  get 'home/index'

  resources :subcriptions
  root to: "subcriptions#index"
end
