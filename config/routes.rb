Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts
  get 'contact-us', to: 'contacts#new'  # this is so that we don't have the old url of .../controller/method.  eg) www..com/contacts/new
end
