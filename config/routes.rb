Rails.application.routes.draw do
  namespace :api do
    resources :dishes do
      get '/restaurants', to: 'dishes#show_restaurants'
    end
    resources :restaurants do
      get '/dishes', to: 'restaurants#show_dishes'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
