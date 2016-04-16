class PostController < ApplicationController

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

end
