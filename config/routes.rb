Rails.application.routes.draw do
  namespace :api do
    get "/words/show" => "words#show"
  end
end
