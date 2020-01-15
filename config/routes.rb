Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :farms, only: [:show] do
    resources :orders, only: [:new, :create]
  end
  resources :orders, only: [:show]
  resources :restaurants, only: [:index, :show] do 
    resources :orders, only: [:show]
  end 
end 
