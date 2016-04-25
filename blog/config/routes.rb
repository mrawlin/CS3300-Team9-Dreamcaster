Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  post 'upvote' => 'dreams#upvote'

  get 'welcome/index'
  get 'signup'  => 'users#new'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  resources :dreams do
    resources :comments
  end
  resources :users

  root 'dreams#index'
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :dreams do
    member do
      put "upvote", to: "dreams#upvote"
      put "downvote", to: "dreams#downvote"
    end
  end
 resources :dreams do
   resources :comments
 end
  #resources :dreams,          only: [:create, :destroy]
  resources :comments, only: [:index, :create]
  get '/comments/new(:parent_id)', to: 'comments#new', as: :new_comment
end
