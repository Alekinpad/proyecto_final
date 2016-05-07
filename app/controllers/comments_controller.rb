class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @commentable.comments.new comment_params
    @comment.user = current_user
    @comment.save
    redirect_to @commentable, notice: "Comentario enviado"
  end

  def destroy 
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @commentable
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end