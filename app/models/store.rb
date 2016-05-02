class Store < ActiveRecord::Base
  belongs_to :user
  has_many :products, dependent: :destroy
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable

  validates :user_id, uniqueness: true

  def to_s
    self.name
  end
end
