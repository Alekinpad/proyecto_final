class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @like = @likeable.likes.new
    @like.user = current_user
    @like.save
    redirect_to @likeable, notice: "Tu like se ha guardado"
  end

  private

end