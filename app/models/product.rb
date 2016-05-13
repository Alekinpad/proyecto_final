class Product < ActiveRecord::Base
  include LikeHelper
  belongs_to :store
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :user_likes, through: :likes, source: :user
  
  has_many :product_wishlists, dependent: :destroy
  has_many :wishlists, through: :product_wishlists

  validates :name, presence: true

  acts_as_taggable

  mount_uploader :photo, PhotoUploader

  def to_s
    self.name
  end
end
