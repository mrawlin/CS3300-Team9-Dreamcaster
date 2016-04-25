class CommentsController < ApplicationController
  def create
    if params[:comment][:parent_id].to_i > 0
      parent = Comment.find_by_id(params[:comment].delete(:parent_id))
      @comment = parent.children.build(comment_params)
    else
      @comment = Comment.new(comment_params)
    end

    if @comment.save
      flash[:success] = 'Your comment was successfully added!'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def new
    @comment = Comment.new(parent_id: params[:parent_id])
  end

  def index
    @comments = Comment.hash_tree
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
