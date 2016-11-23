Rails.application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users
  root 'pages#Home'
  get 'pages/About'
  get 'pages/Contact'
  get 'pages/Team'

  get 'accounts', to: "accounts#index"

  resources :blogs do
    member do
      get "like", to: "blogs#upvote"
      get "dislike", to: "blogs#downvote"
    end
  end
  resources :memories do
    member do
      get "like", to: "memories#upvote"
      get "dislike", to: "memories#downvote"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
