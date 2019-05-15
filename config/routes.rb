Rails.application.routes.draw do
  root "subs#index"

  resources :subs do
    resources :topics
  end




  # get "/subs", to: "subs#index"
  # get "/subs/:id", to: "subs#show"
  # delete "/subs/:id", to: "subs#destroy"
end
