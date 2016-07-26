Rails.application.routes.draw do
=begin
  get 'categories/index'

  get '/categories/:id', to: 'categories#show' , as: 'category'
=end

  get 'home/index'

  root :to => 'home#index'
  resources :comments
  devise_for :users
  resources :categories,only: [] do
    resources :cartoons, only: [:index,:show]
  end
  resources :categories do
    resources :categories, only:[:index],path: '/'
  end
end
