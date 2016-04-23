Rails.application.routes.draw do
  root to: 'stories#index'
  devise_for :users
  resources :stories do
      member do
        put "like", to: "stories#upvote"
        put "dislike", to: "stories#downvote"
        put "unlike", to: "stories#unupvote"
        put "undislike", to: "stories#undownvote"
      end
  end
  resources :posts do
      member do
        put "like", to: "posts#upvote"
        put "dislike", to: "posts#downvote"
        put "unlike", to: "posts#unupvote"
        put "undislike", to: "posts#undownvote"
      end
  end
end
