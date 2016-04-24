class PostsController < ApplicationController

def new
	@post = Post.new
	@story = Story.find(params[:story_id])
end

def create
	@post = Post.create post_params
	@post.user_id = current_user.id
  current_user.points += 1
	current_user.save
	@post.content = post_params[:content]
	@post.success = false
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
  user = User.find(@post.user_id)
  user.points += 1
	current_user.points += 1
	current_user.save
  @post.liked_by current_user
	if @post.score == 3 && @post.success == false
		@post.success = true
		@post.save
		story = Story.find(@post.story_id)
    user.points += 5
		# old = story.posts
		# story.posts = []
		story.posts.each do |p|
			if p.success == false

				story.posts.delete(p)
				p.destroy
			end
		end
	end
	user.save
	redirect_to story_url(id:@post.story.id)
end

  def downvote
    @post = Post.find(params[:id])
    user = User.find(@post.user_id)
    user.points -= 1
		user.save
    @post.disliked_by current_user
		if @post.score == -3 && @post.success == false
			story = Story.find(@post.story_id)
			story.posts.delete(@post)
			@post.destroy
		end
    redirect_to story_url(id:@post.story_id)
  end

  def unupvote
    @post = Post.find(params[:id])
    @post.unliked_by current_user
    redirect_to story_url(id:@post.story_id)
		user = User.find(@post.user_id)
    user.points -= 1
		user.save
		current_user.points -= 1
		current_user.save
  end

  def undownvote
    @post = Post.find(params[:id])
  	@post.undisliked_by current_user
    redirect_to story_url(id:@post.story_id)
		user = User.find(@post.user_id)
    user.points += 1
		user.save
  end


private
def post_params
	params.require(:post).permit(:content, :story_id)
end

end
