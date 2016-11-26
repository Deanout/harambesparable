Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  #mount ActionCable.server => 'ws://cable.harambes.me'
  #match "/cable", to: ActionCable.server, via: [:get, :post]

  devise_for :users
  root 'home#home'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/team'
  #get 'chat', to: 'rooms#show'

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
