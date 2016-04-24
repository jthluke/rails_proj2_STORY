class StoriesController < ApplicationController

	def index
		@stories = Story.all
	end

	def new
	    @story = Story.new
  	end

	def create
		@story = Story.create story_params
		@story.user_id = current_user.id
		if @story.save
			redirect_to story_url(id:@story.id)
		else
			flash[:error] = @story.errors.full_messages.to_sentence
			redirect_to stories_path
		end
	end

	def show
		@story = Story.find(params[:id])
	end

	  def upvote
	    @story = Story.find(params[:id])
	    @story.liked_by current_user
	    redirect_to stories_path
	  end

	  def downvote
	    @story = Story.find(params[:id])
	    @story.disliked_by current_user
	    redirect_to stories_path
	  end
	  
	  def unupvote
	    @story = Story.find(params[:id])
	    @story.unliked_by current_user
	    redirect_to stories_path
	  end
	    
	  def undownvote
	    @story = Story.find(params[:id])
	    @story.undisliked_by current_user
	    redirect_to stories_path
	  end

	private

	    def story_params
	      params.require(:story).permit(:beginning)
	    end


end
