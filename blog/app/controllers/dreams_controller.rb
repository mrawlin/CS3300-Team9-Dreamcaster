class DreamsController < ApplicationController

<<<<<<< HEAD
=======
	#Added features are in this section:

	#Voting is on 10 point scale to add more resolution
	def upvote
		@dream = Dream.find(params[:id])
		@dream.rating = @dream.rating + 10
	end

	def downvote
		@dream = Dream.find(params[:id])
		@dream.rating = @dream.rating - 10
	end


	#All standard methods below:
>>>>>>> f1cfb7cf07bae1b2cd1dbe18d2090ff052499f07
	def show
		@dream = Dream.find(params[:id])
	end

	def index
		@dreams = Dream.all.reverse
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
<<<<<<< HEAD
  end

  def create
    @dream = Dream.new(dream_params)
      
        if @dream.save
			redirect_to @dream
		else
			render 'new'
=======
		#@dream.rating = 0
  end

	def create
		@dream = Dream.create!(dream_params)
		#@dream.rating = 0
		if @dream.save 
			redirect_to @dream
		else
			redirect_to dreams_path
>>>>>>> f1cfb7cf07bae1b2cd1dbe18d2090ff052499f07
		end
	end

	def destroy
		@dream= Dream.find(params[:id])
		@dream.destroy

		redirect_to dreams_path
	end

<<<<<<< HEAD
  private
  	def dream_params
  		params.require(:dream).permit(:title, :text)
  	end
=======
	private
		def dream_params
			params.require(:dream).permit(:title, :text, :rating)
		end
>>>>>>> f1cfb7cf07bae1b2cd1dbe18d2090ff052499f07
end
