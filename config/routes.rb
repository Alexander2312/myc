Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/pages/entry" => "pages#entry", as: :entry
  get "/pages/kitchensink" => "pages#kitchensink", as: :kitchensink
  get "/condition_reports/:id/confirmation" => "condition_reports#confirmation", as: :confirmation

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :properties


  resources :condition_reports, except: [:destroy] do
    resources :comments, only: [:new, :create]
  end



    # resources :rooms, only: [:new, :create]



  resources :rooms do
    resources :room_elements, only: [:new, :create]
  end


  resources :room_elements, only: [:new, :create, :edit, :update, :destroy] do
    resources :comments, only: [:new, :create]

  resources :room_element_approvals, only: [:new, :create, :update]

  end
end
