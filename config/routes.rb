Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :properties do
    resources :condition_report
    resources :rooms, only: [:new, :create]
    resources :room_elements, only: [:new, :create, :edit, :update, :destroy]
    resources :comments, only: [:new, :create]
  end
end
