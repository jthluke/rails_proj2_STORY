class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def create
		@post = Post.create post_params
		@post.user_id = current_user.id
		@post.vote = 0
		if @post.save
			redirect_to story_url(id:@post.story_id)
		else
			flash[:error] = @post.errors.full_messages.to_sentence
			redirect_to story_url(id:@post.story_id)
		end
	end

	private
	def post_params
		params.require(:post).permit(:content)
	end

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
