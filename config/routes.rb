Rails.application.routes.draw do

    resources :heroes, only: [:index, :show]
    resources :powers, only: [:index, :show, :update]
    resources :hero_powers, only: [:create]
  
    # custom route for GET /heroes/:id/powers
    get '/heroes/:id/powers', to: 'heroes#powers'
  
    # custom routes for error handling
    get '*unmatched_route', to: 'application#not_found'
    match '/404', to: 'application#not_found', via: :all

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
