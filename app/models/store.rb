class Store < ActiveRecord::Base
  belongs_to :user
  has_many :products
  has_many :comments, as: :commentable
end
