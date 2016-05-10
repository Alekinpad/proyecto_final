class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @wishlists = @user.wishlists
  end
end
