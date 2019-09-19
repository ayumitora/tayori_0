Rails.application.routes.draw do
  get 'home/index'
  get 'home/show'
  root to: "home#index"

  devise_for :customers
  devise_for :makers, controllers: {
    sessions: 'makers/sessions'
  }
  resources :evaluates
  resources :products
  resources :makers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end