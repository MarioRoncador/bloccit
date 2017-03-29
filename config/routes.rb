Rails.application.routes.draw do

   resources :advertisements
   resources :questions
   resources :topics do
      resources :posts, except: [:index]
      resources :sponsored_posts
   end
   resources :users, only: [:new, :create]
   post 'users/confirm' => 'users#confirm'
   resources :sessions, only: [:new, :create, :destroy]

   get 'about' => 'welcome#about'

  root 'welcome#index'

end
