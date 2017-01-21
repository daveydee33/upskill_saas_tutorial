Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # so, the routing says "get" is the type of request (GET request). for ".../contact-us" with direct to "contacts" controller.

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: [:create]  # this removes the other routes/methods we don't need for the contact form (no edit, update, etc actions needed)
  get 'contact-us', to: 'contacts#new', as: 'new_contact'  # this is so that we don't have the old url of .../controller/method.  eg) www..com/contacts/new.  Also, we added 'as: "new_contact" so that the links didn't break in application.html.erb.  Otherwise we would have to go back there and update the link to whatever was correct in 'rails routes' console command.  'contact_us'  [contact_us GET  /contact-us(.:format) contacts#new]
end
