Rails.application.routes.draw do
  get '/', to: "home#index"
  get '/merchants', to: "merchants#index"
end
