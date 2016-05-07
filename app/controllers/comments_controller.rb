class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @commentable.comments.new comment_params
    @comment.user = current_user
    @comment.save
    if @commentable.is_a?(Product) 
      redirect_to [@store, @commentable], notice: "Comentario enviado"
    else
      redirect_to @commentable, notice: "Comentario enviado"
    end
  end

  def destroy 
    @comment = Comment.find(params[:id])
    @comment.destroy
    if @commentable.is_a?(Product) 
      redirect_to [@store, @commentable], notice: "Comentario borrado"
    else
      redirect_to @commentable, notice: "Comentario borrado"
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end