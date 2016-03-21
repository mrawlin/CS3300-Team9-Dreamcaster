Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  post '/rate' => 'rater#create', :as => 'rate'
  get 'welcome/index'
  get 'signup'  => 'users#new'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  resources :dreams
  resources :users

  root 'dreams#index'
  
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end
