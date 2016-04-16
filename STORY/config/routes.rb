Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts
  resources :stories do
      member do
        put "like", to: "stories#upvote"
        put "dislike", to: "stories#downvote"
      end
  end
  resources :posts do
      member do
        put "like", to: "posts#upvote"
        put "dislike", to: "posts#downvote"
      end
  end
end
