Rails.application.routes.draw do
  resources :wrestlers
  devise_for :users, :controllers => { :sessions => "custom_sessions", :registrations => "custom_registrations" }
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
