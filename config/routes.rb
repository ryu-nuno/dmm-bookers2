Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: 'homes#top'

   resources :books

   resources :users

   get "/home/about" => "homes#about"

end