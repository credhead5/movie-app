Rails.application.routes.draw do
  namespace :api do
    get "/actor_url" => "actors#actor_action"
    get"/movie_url" => "actors#movie_method"
  end
end
