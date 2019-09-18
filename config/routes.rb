Rails.application.routes.draw do
  get 'evaluates/index'
  get 'evaluates/show'
  get 'evaluates/new'
  get 'evaluates/edit'
  devise_for :customers
  # get 'makers/index'
  # get 'makers/show'
  # get 'makers/new'
  # get 'makers/edit'
  devise_for :makers, controllers: {
    sessions: 'makers/sessions'
  }
  resources :evaluates
  resources :products
  resources :makers
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end