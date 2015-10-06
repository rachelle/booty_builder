Rails.application.routes.draw do
   root 'static_pages#index'

   get '/login', to: 'sessions#new'
   
   delete '/logout', to: 'sessions#destroy'

  resources :users
end
