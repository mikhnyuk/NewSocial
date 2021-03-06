Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :destroy, :show, :update]
    resource :session, only: [:create, :destroy]
    resources :stories, only: [:create, :destroy, :show, :update, :index] do
      resources :responses, only: [:create, :destroy, :update]
      resources :likes, only: [:create, :destroy]
    end
    resources :bookmarks, only: [:create, :index, :destroy]
    resources :topics, only: [:create, :destroy, :show, :index]
    resources :topictags, only: [:create, :destroy]
    resources :topicfollows, only: [:create, :destroy, :index]
    resources :follows, only: [:create, :destroy, :show]
  end

  root "static_pages#root"

end
