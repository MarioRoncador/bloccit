Rails.application.routes.draw do

   resources :users
   resources :advertisements
   resources :questions
   resources :topics do
      resources :posts, except: [:index]
      resources :sponsored_posts
   end

   get 'about' => 'welcome#about'

  root 'welcome#index'

end
