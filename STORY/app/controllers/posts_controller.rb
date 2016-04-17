class PostsController < ApplicationController

	def new
		@post = Post.new
		@story = Story.find(params[:story_id])
	end

	def create
		@post = Post.create post_params
		@post.user_id = current_user.id
		@post.content = post_params[:content]
		@post.vote = 0
		if @post.save
			redirect_to story_url(id:@post.story.id)
		else
			flash[:error] = @post.errors.full_messages.to_sentence
			redirect_to story_url(id:@post.story.id)
		end
	end
	
  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
		if @post.score == 10
			@post.success = true
			story = Story.find(@post.story_id)
			old = story.posts
			story.posts = []
			old.each do |p|
				if p.success == false
					story.posts.push(p)
			    end
		    end
        end
		redirect_to story_url(id:@post.story.id)
  end

    def downvote
      @post = Post.find(params[:id])
      @post.downvote_by current_user
      redirect_to story_url(id:@post.story_id)
    end


	private
	def post_params
		params.require(:post).permit(:content)
	end

end
