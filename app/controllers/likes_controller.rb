class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = @likeable.likes.build(user: current_user)

    if @likeable.liked_by? current_user
      @likeable.remove_like current_user
      if @likeable.is_a?(Product) 
        redirect_to [@store, @likeable], notice: "Tu like se ha borrado"
      else
        redirect_to @likeable, notice: "Tu like se ha borrado"
      end
    elsif @like.save
      if @likeable.is_a?(Product) 
        redirect_to [@store, @likeable], notice: "Tu like se ha guardado"
      else
        redirect_to @likeable, notice: "Tu like se ha guardado"
      end
    else  
      if @likeable.is_a?(Product) 
        redirect_to [@store, @likeable], notice: "Error"
      else
        redirect_to @likeable, notice: "Error"
      end
    end
  end

end