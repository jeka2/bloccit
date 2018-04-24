Rails.application.routes.draw do

  resources :topics

  resources :questions

  resources :advertisements

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  resources :posts, only: [] do

    resources :comments, only: [:create, :destroy]
    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end

  resources :topics do
     resources :posts, except: [:index]
   end

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
