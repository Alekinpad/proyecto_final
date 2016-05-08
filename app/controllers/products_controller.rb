class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @store = Store.find(params[:store_id])
  end

  # GET /products/new
  def new
    @store = Store.find(params[:store_id])
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    @store = Store.find(params[:store_id])
  end

  # POST /products
  # POST /products.json
  def create
    @store = Store.find(params[:store_id])
    @product = Product.new(product_params)
    @product.store = current_user.store

    respond_to do |format|
      if @product.save
        format.html { redirect_to @store, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @store = Store.find(params[:store_id])
    @product.destroy
    respond_to do |format|
      format.html { redirect_to @store, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :photo, :photo_cache, :price, :stock, :store_id, :tag_list)
    end
end
