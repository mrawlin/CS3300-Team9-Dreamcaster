#Controller class for:
#currently unused
class SubthreadsController < ApplicationController
    def create
      @comment = comment.find_by(params[:commment_id])
      @subthread = comment.subthreads.create(comment_params)
      redirect_to dream_path(@comment)
    end

    def destroy
      @comment = Comment.find(params[:comment_id])
      @subthread = @comment.find(params[:id])
      @subthread.destroy
      redirect_to dream_path(@comment)
    end

    private
    def comment_params
      params.require(:subthread).permit(:commenter, :body)
    end
end
