class DreamsController < ApplicationController

	def show
		@dream = Dream.find(params[:id])
	end

	def index
		@dreams = Dream.all
	end

  def new
  end

  def create
    @dream = Dream.new(dream_params)

    @dream.save
    redirect_to @dream
  end

  private
  	def dream_params
  		params.require(:dream).permit(:title, :text)
  	end
end
