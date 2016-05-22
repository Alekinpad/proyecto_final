class SearchesController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    @product = @q.result(distinct: true)
    @q.build_condition
  end

  def show
    index
    render :index
  end
end

