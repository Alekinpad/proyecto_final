class Products::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
      @store = Store.find(params[:store_id])
      @commentable = Product.find(params[:product_id])
    end
end