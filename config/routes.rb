TokenApp::Application.routes.draw do
  get "home/index"

  devise_for :users
  
  resources :token_authentications, :only => [:create, :destroy]

  root :to => "home#index"

end
