Rails.application.routes.draw do
  get 'photos/index'

  get 'photos/new'

  get 'photos/show'

  get 'photos/edit'

  get 'photos/update'

  get 'photos/destroy'

  root 'static_pages#index'

   get '/login', to: 'sessions#new'
   
   delete '/logout', to: 'sessions#destroy'

   resources :sessions
   resources :users
end
