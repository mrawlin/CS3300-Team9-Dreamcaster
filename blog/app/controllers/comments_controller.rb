class CommentsController < ApplicationController
  def create
    @dream = Dream.find(params[:dream_id])
    @comment = @dream.comments.create(comment_params)
    redirect_to dream_path(@dream)
  end

	def update
		@dream = Dream.find(params[:dream_id])
		@comment = @dream.comments.find(params[:id])
		@comment.update
		redirect_to dream_path(@dream)
	end

  def destroy
    @dream = Dream.find(params[:dream_id])
    @comment = @dream.comments.find(params[:id])
    @comment.destroy
    redirect_to dream_path(@dream)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
