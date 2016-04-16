class PostController < ApplicationController
    def upvote
      @post = Post.find(params[:id])
      @post.upvote_by current_user
      redirect_to stories_path
    end
        
    def downvote
      @post = Post.find(params[:id])
      @post.downvote_by current_user
      redirect_to stories_path
    end
end
