Rails.application.routes.draw do
  namespace :api do
    get "/movies/:id" => "movies#show"

    get "/movies" => "movies#index"

    post "/movies" => "movies#create"

    get "/movies/:id" => "movies#show"


    patch "/movies/:id" => "movies#update"
    
    delete "/movies/:id" => "movies#destroy"

    get "/actors" => "actors#index"

    post "/actors" => "actors#create"

    get "/actors/:id" => "actors#show"


    patch "/actors/:id" => "actors#update"
    
    delete "/actors/:id" => "actors#destroy"
    post "/users" => "users#create"

    patch "/users/:id" => "users#show"

    post "/sessions" => "sessions#create"

    post "/movie_genres" => "movie_genres#create"

    get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] } 

  end
end
