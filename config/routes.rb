Rails.application.routes.draw do
  root 'home#index'
  get 'filter/index'
  get 'finder/index'
  resources :newspapers
  resources :categories
  # get 'root/home'
  get '/newspapers/categories', to: 'newspapers#filter', as: :newspapers_filter
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end

