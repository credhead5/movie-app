Rails.application.routes.draw do
  namespace :api do
    get "/actor_url" => "actors#actor_action"
  end
end
