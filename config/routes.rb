Rails.application.routes.draw do
  resources :restaurants, except: [:update, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  namespace :admin do
    resources :restaurants, only: [:update, :destroy]
  end
  root 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
