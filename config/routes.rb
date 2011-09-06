TokenApp::Application.routes.draw do
  get "home/index"

#  devise_for :users, :controllers => { :sessions => "users/sessions" }
  
  devise_for :users, :controllers => { :sessions => "sessions" }

  devise_scope :user do
    resources :sessions, :only => [:create, :destroy]
  end
  
  resources :token_authentications, :only => [:create, :destroy]

  root :to => "home#index"

end
