require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, path: "/" do
  # namespace :api do
    namespace :v1 do
      resources :items
      put '/items' => 'items#completedAll'
      delete '/items' => 'items#destroyCompletedTodo'
      # resources :items
    end
  end
end