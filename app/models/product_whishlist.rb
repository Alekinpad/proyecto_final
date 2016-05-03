class ProductWhishlist < ActiveRecord::Base
  belongs_to :product
  belongs_to :whishlist
end
