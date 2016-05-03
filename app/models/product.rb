class Product < ActiveRecord::Base
  include LikeHelper
  belongs_to :store
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :user_likes, through: :likes, source: :user

  acts_as_taggable

  def to_s
    self.name
  end
end
