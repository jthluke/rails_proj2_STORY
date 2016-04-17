class StoriesController < ApplicationController

	def index
		@stories = Story.all
	end

	def show
		@story = Story.find(params[:id])
	end

    def upvote
      @story = Story.find(params[:id])
      @story.upvote_by current_user
      redirect_to stories_path
    end
    
    def downvote
      @story = Story.find(params[:id])
      @story.downvote_by current_user
      redirect_to stories_path
    end

end
