Rails.application.routes.draw do

   resources :topics

  resources :questions

  resources :advertisements

  resources :users, only: [:new, :create]

  resources :topics do
     resources :posts, except: [:index]
   end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
