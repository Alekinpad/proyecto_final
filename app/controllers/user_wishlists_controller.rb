class UserWishlistsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @user_wishlist = UserWishlist.find(params[:id])
    @products = @user_wishlist.products    
  end

  def add_to_wishlist
    @product = Product.find(params[:product_id])
    @user_wishlist = UserWishlist.find(params[:user_wishlist_id])
    @user_wishlist.product_wishlists.build(product: @product)
    
    if @user_wishlist.save
      redirect_to :back, notice: "El producto #{@product.name} se ha añadido a tu wishlist #{@user_wishlist.wishlist.name}"
    else
      redirect_to :back, notice: "El producto #{@product.name} ya está en tu wishlist #{@user_wishlist.wishlist.name}"
    end
  end

  def remove_from_user_wishlist
    @product = Product.find(params[:product_id])
    @user_wishlist = UserWishlist.find(params[:user_wishlist_id])
    @user_wishlist.products.destroy(@product)

    redirect_to :back, notice: "El producto #{@product.name} se ha borrado de tu wishlist #{@user_wishlist.wishlist.name}" 
  end
end
