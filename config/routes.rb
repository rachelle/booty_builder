Rails.application.routes.draw do

  get 'comments/index'

  get 'comments/new'

  get 'comments/create'

  get 'comments/show'

  get 'comments/destroy'

  root 'static_pages#index'

    delete '/logout', to: 'sessions#destroy'

    get '/login', to: 'sessions#new'
    
    resources :sessions
    resources :users
    resources :workouts
   
    resources :photos do 
      resources :comments
    end 
   
end
