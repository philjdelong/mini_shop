Rails.application.routes.draw do
  get '/', to: "home#index"
  get '/merchants', to: "merchants#index"
  post '/merchants/new', to: "merchants#new"
  post '/merchants', to: "merchants#create"
  get '/merchants/:id', to: "merchants#show"
  get 'merchants/:id/edit', to: "merchants#edit"
  patch '/merchants/:id', to: "merchants#update"
end
