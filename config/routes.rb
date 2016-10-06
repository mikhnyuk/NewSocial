Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create, :destroy, :show]
    resource :session, only: [:create, :destroy]
    resources :stories, only: [:create, :destroy, :show, :update, :index]
  end

  root "static_pages#root"

end
