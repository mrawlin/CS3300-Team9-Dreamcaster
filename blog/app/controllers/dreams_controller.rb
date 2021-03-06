#Controller class for:
class DreamsController < ApplicationController
	def upvote
		@dream = Dream.find(params[:id])

		if current_user then
			if current_user.voted_up_on? @dream then
				@dream.unvote_by current_user
			else
				@dream.unvote_by current_user
	 			@dream.upvote_by current_user
	 		end
	 	end

 		redirect_to dreams_path
 	end

	def downvote
		@dream = Dream.find(params[:id])

		if current_user then
			if current_user.voted_down_on? @dream then
				@dream.unvote_by current_user
			else
				@dream.unvote_by current_user
	 			@dream.downvote_by current_user
	 		end
 		end

 		redirect_to dreams_path
	end

	#All standard methods below:
	def show
		@dream = Dream.find(params[:id])
	end

	def index
		ps = params[:search]
		if ps
			@dreams = Dream.search(ps).order("created_at DESC")
		else
			@dreams = Dream.all.order("created_at DESC")
		end
	end

	def edit
		@dream = Dream.find(params[:id])
	end

	def update
		@dream = Dream.find(params[:id])

		if @dream.update(dream_params)
			redirect_to @dream
		else
			render 'edit'
		end
	end

  def new
		@dream = Dream.new
  end

	def create
		if logged_in?
			@dream = current_user.dreams.create(dream_params) #Dream.create(dream_params)
		else 
			@dream = Dream.create(dream_params)
		end

		if @dream.valid? then
			redirect_to @dream
    else
			render 'new'
    end

	end

	def destroy
		@dream= Dream.find(params[:id])
		@dream.destroy

		redirect_to dreams_path
	end

	private
		def dream_params
			params.require(:dream).permit(:user,:title,:content, :text, :uprating, :downrating, :creator)
		end
end
