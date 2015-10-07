Rails.application.routes.draw do

  get 'workouts/index'

  get 'workouts/new'

  get 'workouts/edit'

  get 'workouts/show'

  get 'workouts/update'

  get 'workouts/destroy'

  root 'static_pages#index'

    get '/login', to: 'sessions#new'
   
    delete '/logout', to: 'sessions#destroy'

   resources :sessions
   resources :users
   resources :photos
   
end
