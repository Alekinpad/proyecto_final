class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @whishlists = @user.whishlists
  end
end
