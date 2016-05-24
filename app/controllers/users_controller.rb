class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_wishlists = @user.user_wishlists
  end

  def login
    @user = User.koala(request.env['omniauth.auth']['credentials'])
  end
end
