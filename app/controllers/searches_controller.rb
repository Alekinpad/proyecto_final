class SearchesController < ApplicationController
  def index
    @q = Product.ransack(params[:q])
    distance = params[:distance].present? ? params[:distance] : 2
    #@products = @q.result(distinct: true)
    stations = Station.near([params[:latitude], params[:longitude]], distance, :units => :km)
    @products = []

    stations.each do |station|
      station.products.each do |p|
        @products << p
      end
    end
  end

  def show
    index
    render :index
  end
end

