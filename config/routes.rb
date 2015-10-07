Rails.application.routes.draw do

  root 'static_pages#index'

    get '/login', to: 'sessions#new'
   
    delete '/logout', to: 'sessions#destroy'

    resources :sessions
    resources :users
    resources :workouts
   
    resources :photos do 
      resources :comments
    end
   
end
