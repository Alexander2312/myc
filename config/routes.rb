Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :properties


  resources :condition_report do
    # resources :rooms, only: [:new, :create]
  end

  resources :rooms do
    resources :room_elements, only: [:new, :create]
  end


  resources :room_elements, only: [:new, :create, :edit, :update, :destroy] do
    resources :comments, only: [:new, :create]
  end
end
