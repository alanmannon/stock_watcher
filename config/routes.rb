Rails.application.routes.draw do
  namespace :api do
    get "/stocks" => "stocks#index"
    get "/stocks/:id" => "stocks#show"
  end
end
