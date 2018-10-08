Rails.application.routes.draw do
  root "main#index"

  get '/cities/view', :to => 'cities#view'
  get '/cities/update', :to => 'cities#update'
  get '/cities/new', :to => 'cities#new'
  post '/cities/create', :to => 'cities#create'
  post '/cities/update', :to => 'cities#update'
end
