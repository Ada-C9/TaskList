Rails.application.routes.draw do

  get '/tasks', to: 'tasks#index'

  # post '/tasks/new', to: 'tasks#new'
  # get '/tasks', to: 'tasks#create'
  #
  # get '/tasks/:id', to: 'tasks#show'
  # get '/tasks/:id', to: 'tasks#edit'
  # patch '/tasks/:id', to: 'tasks#update'
  # delete '/tasks/:id', to: 'tasks#destroy'

end
