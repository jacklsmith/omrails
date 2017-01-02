Rails.application.routes.draw do
  resources :projects
  resources :trackings
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin" => 'devise/sessions#new'
  	delete "signout" => 'devise/sessions#destroy'
  	get "signup" => 'devise/registrations#new'
  end
  get 'trackings' => 'pages#tracking'
  root 'trackings#index'
end