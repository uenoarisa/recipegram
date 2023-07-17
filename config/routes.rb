Rails.application.routes.draw do
  
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'勝手に生成されるから消す
  devise_for :users
  root to: "home#index"
  resources :users
  
  # 上と
  resources :recipes
end
