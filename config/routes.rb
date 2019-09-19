Rails.application.routes.draw do
  get 'customers/index'
  get 'customers/show'
  get 'customers/new'
  get 'customers/edit'
  get 'home/index'
  get 'home/show'
  root to: "home#index"

  devise_for :customers, controllers: {
        sessions: 'customers/sessions'
  }

  devise_for :makers, controllers: {
    sessions: 'makers/sessions'
  }

  resources :evaluates
  resources :products
  resources :makers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# 例
#   devise_for :users, :controllers => {
#     :registrations => 'users/registrations',
#     :sessions => 'users/sessions'
#   }

#   devise_scope :user do
#     get "sign_in", :to => "users/sessions#new"
#     get "sign_out", :to => "users/sessions#destroy"
#   end