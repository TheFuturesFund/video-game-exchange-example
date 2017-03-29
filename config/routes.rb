Rails.application.routes.draw do
  resources :listings
  root to: "listings#index"
end
