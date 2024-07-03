Rails.application.routes.draw do
  namespace :admin do
    # get 'news/index'
    # get 'news/new'
    # get 'news/edit'
    # get 'admins/index'

    resources :admins, only: [:index]

    resources :news, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  get 'news/index'
  get 'news/show'
  get 'rescude_cats/index'
  get 'contacts/new'
  get 'contacts/confirm'
  get 'contacts/done'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :contacts, only: [:new, :create] do
    collection do
      post 'confirm'
      post 'back'
      get 'done'
    end
  end
end
