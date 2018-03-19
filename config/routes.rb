Rails.application.routes.draw do
  get 'tasks/index'

  get 'tasks/show'

  get 'tasks/create'

  get 'tasks/edit'

  get 'tasks/mark_complete'

  get 'tasks/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
