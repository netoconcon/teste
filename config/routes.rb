Rails.application.routes.draw do

  get 'mentors/index'
  get 'mentors/show'
  get 'mentors/new'
  get 'mentors/edit'
  devise_for :users
  root to: 'pages#home'

  resources :mentors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
