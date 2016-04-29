class Product < ActiveRecord::Base
  belongs_to :store
  has_many :comments, as: :commentable
end
