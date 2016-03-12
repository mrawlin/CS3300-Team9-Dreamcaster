class DreamsController < ApplicationController

  def new
  end

  def create
    @dream = Dream.new(params[:dream])

    @dream.save
    redirect_to @dream
  end

end
