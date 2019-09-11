Rails.application.routes.draw do
  get 'makers/index'
  get 'makers/show'
  get 'makers/new'
  get 'makers/edit'
  devise_for :makers, controllers: {
    sessions: 'makers/sessions'
  }

  resources :products
  resources :makers
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end