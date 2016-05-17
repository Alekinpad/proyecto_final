class Metro < ActiveRecord::Base
  has_many :metro_stores
  has_many :stores, through: :metro_stores

  def to_s
    self.name
  end
end
