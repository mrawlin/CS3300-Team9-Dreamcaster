class DreamsController < ApplicationController

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
  end

  def create
    @dream = Dream.new(dream_params)

    if !@dream.title == nil       
        if @dream.save
			redirect_to @dream
		else
			render 'new'
		end
	end
    else
        raise ArgumentError.new('Title cannot be empty.')
    end

	def destroy
		@dream= Dream.find(params[:id])
		@dream.destroy

		redirect_to dreams_path
	end

  private
  	def dream_params
  		params.require(:dream).permit(:title, :text)
  	end
end
