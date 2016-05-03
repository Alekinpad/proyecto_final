class WhishlistsController < ApplicationController
  before_action :set_whishlist, only: [:show, :edit, :update, :destroy]

  # GET /whishlists
  # GET /whishlists.json
  def index
    @whishlists = Whishlist.all
  end

  # GET /whishlists/1
  # GET /whishlists/1.json
  def show
  end

  # GET /whishlists/new
  def new
    @whishlist = Whishlist.new
  end

  # GET /whishlists/1/edit
  def edit
  end

  # POST /whishlists
  # POST /whishlists.json
  def create
    @whishlist = Whishlist.new(whishlist_params)

    respond_to do |format|
      if @whishlist.save
        format.html { redirect_to @whishlist, notice: 'Whishlist was successfully created.' }
        format.json { render :show, status: :created, location: @whishlist }
      else
        format.html { render :new }
        format.json { render json: @whishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whishlists/1
  # PATCH/PUT /whishlists/1.json
  def update
    respond_to do |format|
      if @whishlist.update(whishlist_params)
        format.html { redirect_to @whishlist, notice: 'Whishlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @whishlist }
      else
        format.html { render :edit }
        format.json { render json: @whishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whishlists/1
  # DELETE /whishlists/1.json
  def destroy
    @whishlist.destroy
    respond_to do |format|
      format.html { redirect_to whishlists_url, notice: 'Whishlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whishlist
      @whishlist = Whishlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whishlist_params
      params.require(:whishlist).permit(:type, :name, :icon, :user_id)
    end
end
