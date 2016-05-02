class Store < ActiveRecord::Base
  include LikeHelper
  belongs_to :user
  has_many :products, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :user_likes, through: :likes, source: :user

  validates :user_id, uniqueness: true

  def to_s
    self.name
  end
end
