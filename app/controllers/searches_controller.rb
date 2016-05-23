class SearchesController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @product = @q.result(distinct: true)
  end

  def show
    index
    render :index
  end
end

