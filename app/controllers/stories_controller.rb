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
		current_user.points += 1
		current_user.save
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
	    user = User.find(@story.user_id)
	    
		  if (current_user.voted_down_on? @story)
		  		if current_user.id == user.id
		  			user.points += 3
		  			user.save
				else
					current_user.points += 1
					user.points += 2
					user.save
					current_user.save
				end
		  else
				if current_user.id == user.id
		  			user.points +=2
		  			user.save
		  		else
		  			current_user.points +=1
		  			user.points +=1
		  			user.save
		  			current_user.save
		  		end
		  end
		  @story.liked_by current_user
	    redirect_to stories_path
	  end

	  def downvote
	    @story = Story.find(params[:id])
	      user = User.find(@story.user_id)

		if (current_user.voted_up_on? @story)
		    if current_user.id == user.id
		    	user.points -= 3
		    	user.save
	    	else
	    		current_user.points -= 1
				current_user.save
				user.points -= 2
				user.save
	    	end
	    else
	    	user.points -= 1
	    	user.save
		end
		@story.disliked_by current_user

		if @story.score <= -5
			@story.posts do |p|
				p.destroy
			end
			@story.destroy
		end

	    redirect_to stories_path
	  end

	  def unupvote
	    @story = Story.find(params[:id])
	    @story.unliked_by current_user
			user = User.find(@story.user_id)
	    if current_user.id == user.id
	    	user.points -=2
	    	user.save
		else
	    	user.points -= 1
			user.save
			current_user.points -= 1
			current_user.save
		end

		if @story.score <= -5
			@story.posts do |p|
				p.destroy
			end
			@story.destroy
		end
		
	    redirect_to stories_path
	  end

	  def undownvote
	    @story = Story.find(params[:id])
	    @story.undisliked_by current_user
			user = User.find(@story.user_id)
			user.points += 1
			user.save
	    redirect_to stories_path
	  end

	private

	    def story_params
	      params.require(:story).permit(:beginning)
	    end


end
