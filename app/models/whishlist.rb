class Whishlist < ActiveRecord::Base
  belongs_to :user
  has_many :product_whishlists
  has_many :products, through: :product_whishlist

  enum category: [ :love_it, :hate_it, :have_it, :other ]
end
