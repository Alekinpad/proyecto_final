class Station < ActiveRecord::Base
  has_many :station_stores
  has_many :stores, through: :station_stores
  has_many :station_lines
  has_many :lines, through: :station_lines
  has_many :products, through: :stores

  after_validation :reverse_geocode, if: ->(obj){ obj.latitude.present? and obj.latitude_changed? || obj.longitude.present? and obj.longitude_changed?}
  reverse_geocoded_by :latitude, :longitude

  def to_s
    name
  end
end
