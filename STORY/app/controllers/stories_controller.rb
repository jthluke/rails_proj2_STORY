class StoriesController < ApplicationController

	def index
		@stories = Story.all
	end

	def new
    @story = Story.new
  end

  def create
    @story = Story.new story_params
    @story.user = current_user
    @story.save
    redirect_to story_url(id:@story.id)
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

	private

	    def story_params
	      params.require(:story).permit(:content)
	    end

end
