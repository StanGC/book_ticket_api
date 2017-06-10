Rails.application.routes.draw do
  devise_for :users
  namespace :api, :defaults => { :format => :json } do
    namespace :v1 do
      resources :trains, :only => [:index, :show]
      resources :reservations, :ony => [:show, :create, :update, :destroy]
    end
  end

  root "welcome#index"
end
