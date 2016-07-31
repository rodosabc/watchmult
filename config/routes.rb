Rails.application.routes.draw do
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
  devise_for :users

  get 'categories/:category_url_name', to: 'categories#index', as: :categories
  get ':category_url_name', to: 'cartoons#index', as: :cartoons
  get ':category_url_name/:url_name', to: 'cartoons#show', as: :cartoon
end
