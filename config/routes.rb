Rails.application.routes.draw do
  devise_for :customers
  devise_for :makers, controllers: {
    sessions: 'makers/sessions'
  }
  resources :evaluates
  resources :products
  resources :makers
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end