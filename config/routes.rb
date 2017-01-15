Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  #get 'blah', to: 'pages#this_is_a_test'
  resources :contacts
end
