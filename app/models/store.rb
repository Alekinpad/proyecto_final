class Store < ActiveRecord::Base
  include LikeHelper
  belongs_to :user
  has_many :products, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_many :user_likes, through: :likes, source: :user
  has_many :metro_stores
  has_many :metros, through: :metro_stores

  validates :user_id, uniqueness: true
  validates :name, presence: true

  mount_uploader :photo, PhotoUploader
  mount_uploader :cover_photo, CoverPhotoUploader

  accepts_nested_attributes_for :metros

  def to_s
    self.name
  end
end
