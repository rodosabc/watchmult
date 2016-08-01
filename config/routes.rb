Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
=begin
  get 'categories/index'

  get '/categories/:id', to: 'categories#show' , as: 'category'
=end

  get 'home/index'

  root :to => 'home#index'
  resources :cartoons,only: [] do
    resources :comments
    resources :ratings, only:[:update]
  end
  devise_for :users, :skip => [:sessions]
  as :user do
    get 'login' => 'devise/sessions#new', :as => :new_user_session
    post 'login' => 'devise/sessions#create', :as => :user_session
    delete 'logout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  get 'categories/:category_url_name', to: 'categories#index', as: :categories
  get ':category_url_name', to: 'cartoons#index', as: :cartoons
  get ':category_url_name/:url_name', to: 'cartoons#show', as: :cartoon
end
