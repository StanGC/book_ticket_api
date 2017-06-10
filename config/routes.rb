Rails.application.routes.draw do
  devise_for :users
  namespace :api, :defaults => { :format => :json } do
    namespace :v1 do
      post "/signup" => "auth#signup"
      post "/login" => "auth#login"
      post "/logout" => "auth#logout"

      resources :trains, :only => [:index, :show]
      resources :reservations, :ony => [:index, :show, :create, :update, :destroy]
    end
  end

  root "welcome#index"
end
