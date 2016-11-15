Rails.application.routes.draw do
  resources :blogs
  devise_for :users
  root 'pages#Home'

  get 'pages/About'

  get 'pages/Contact'

  get 'pages/Team'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
