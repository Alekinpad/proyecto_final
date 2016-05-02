class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = @likeable.likes.build(user: current_user)

    if @likeable.liked_by? current_user
      @likeable.remove_like current_user
      redirect_to @likeable, notice: "Tu like se ha borrado"
    elsif @like.save
      redirect_to @likeable, notice: "Tu like se ha guardado"
    else  
      redirect_to @likeable, notice: "Error"
    end
  end

end