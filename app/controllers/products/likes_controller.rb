class Products::LikesController < LikesController
  before_action :set_likeable

  private 

    def set_likeable
      @likeable = Product.find(params[:product_id])
    end
end