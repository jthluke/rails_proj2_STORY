Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts
  resources :stories
  resources :links do
      member do
        put "like", to: "links#upvote"
        put "dislike", to: "links#downvote"
      end
  end
end
