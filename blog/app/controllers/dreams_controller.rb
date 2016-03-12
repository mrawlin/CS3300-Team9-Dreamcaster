class DreamsController < ApplicationController

  def new
  end

  def create
    render plain: params[:dreams].inspect #
  end

end
