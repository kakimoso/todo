Rails.application.routes.draw do
  root to: 'tasks#index'
  devise_for :users
  resources :tasks

  post "/graphql", to: "graphql#execute"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
end
