Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  #get 'home/index'

  #for home page
  root 'home#index'

  #for about page
  get 'home/about'

  # for search field
  #"/" = root URL pointing to 'home#index' controller
  post "/" => 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
