Rails.application.routes.draw do
  devise_for :users
  #get 'home/index'
  root 'home#index'
  get 'home/about'
 
  post "/" => 'home#index'

end
