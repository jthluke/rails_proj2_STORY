class StoryController < ApplicationController
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
