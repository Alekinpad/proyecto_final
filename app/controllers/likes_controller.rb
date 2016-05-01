class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = @likeable.like.new like_params
    @like.user = current_user
    @like.save
    redirect_to @likeable, notice: "Tu like se ha guardado"
  end

  private

    def like_params 
      params.require(:like).permit(:paid)
    end
end