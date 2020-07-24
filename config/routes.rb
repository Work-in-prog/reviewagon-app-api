Rails.application.routes.draw do

  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :strollers, param: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end
  get '*path', to: 'pages#index', via: :all
  # allow to handle routing to react component that are not in the pre exsisting api
end
