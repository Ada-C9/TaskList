Rails.application.routes.draw do

  get '/tasks', to: 'tasks#index', as: 'tasks'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/create'
  # get 'tasks/edit'
  # get 'tasks/update'
  # get 'tasks/destroy'
  # get 'index/show'
  # get 'index/new'
  # get 'index/create'
  # get 'index/edit'
  # get 'index/update'
  # get 'index/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# get '/books', to: 'books#index', as: 'books'
#   get '/books/new', to: 'books#new', as: 'new_book'
#   post '/books', to: 'books#create'
#   get '/books/:id/edit', to: 'books#edit', as: 'edit'
#   get '/books/:id', to: 'books#show', as: 'book'
#   patch '/books/:id', to: 'books#update'
#   delete '/books/:id', to: 'books#destroy'
