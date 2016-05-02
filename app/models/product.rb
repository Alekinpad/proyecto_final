class Product < ActiveRecord::Base
  belongs_to :store
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable
  has_many :product_tags
  has_many :tags, through: :product_tags

  def to_s
    self.name
  end
end
