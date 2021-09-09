Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index'

  # add
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create', as: :create
  # find
  get 'tasks/:id', to: 'tasks#find', as: :task
  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
