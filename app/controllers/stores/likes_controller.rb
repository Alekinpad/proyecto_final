class Stores::LikesController < LikesController
  before_action :set_likeable

  private 

    def set_likeable
      @likeable = Store.find(params[:store_id])
    end
end