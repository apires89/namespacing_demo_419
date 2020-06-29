Rails.application.routes.draw do
  namespace :admin do
    get 'producers/new'
    get 'producers/create'
    get 'producers/destroy'
  end
  devise_for :users
  root to: 'pages#home'

  #accessible to everyone

  resources :subjects, only: [:index,:show]


  #only to teachers

  namespace :teachers do
    resources :subjects, only: [:new,:create]
  end

  #only admins are allowerd to create/destroy producers

  #you'll have your own admin controller
  namespace :admin do
    resources :producers, only: [:new,:create,:destroy] do
      resources :products
    end
  end

  #all the users are allowed to visit producers show and index pagesß
  #different controller (normal one)

  resources :producers, only: [:index,:show]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
