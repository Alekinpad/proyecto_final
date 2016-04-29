class Stores::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
      @commentable = Store.find(params[:store_id])
    end
end