Rails.application.routes.draw do
  devise_for :admins, path: 'admin', controllers: { sessions: "admin/sessions" etc....}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions" etc....}
  resources :stocks
  #get 'home/index'

  # home page
  root 'home#index'

  # about page
  get 'home/about'

  # search query
  #"/" = root URL pointing to 'home#index' controller
  post "/" => 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
