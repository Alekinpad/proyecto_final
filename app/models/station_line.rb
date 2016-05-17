class StationLine < ActiveRecord::Base
  belongs_to :station
  belongs_to :line
end
