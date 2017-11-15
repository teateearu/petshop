Rails.application.routes.draw do
  root to: 'pages#home'

   devise_for :users

   resources :users, only: [:show]
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html		    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :categories, only: [:show]

end
