Rails.application.routes.draw do
  # get 'reviews/new'

  # get 'reviews/create'

  # get 'restaurants/new'

  # get 'restaurants/create'

  # get 'restaurants/index'

  # get 'restaurants/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # RESTAURANT AND REVIEWS USER STORIES IN SHORT:

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end

  # # RESTAURANT user stories:

  # get '/restaurants', to: 'restaurants#index'

  # get '/restaurants/:id', to: 'restaurants#show'

  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurant#create'

  # # REVIEWS user stories:

  # get "restaurants/:restaurant_id/reviews/new", to: 'reviews#new' as + prefix
  # post "restaurants/:restaurant_id/reviews", to: 'reviews#create' as + prefix


end
