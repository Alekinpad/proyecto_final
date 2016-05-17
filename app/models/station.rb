class Station < ActiveRecord::Base
  has_many :station_stores
  has_many :stores, through: :station_stores
  has_many :station_lines
  has_many :lines, through: :station_lines
end
