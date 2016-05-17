class StationStore < ActiveRecord::Base
  belongs_to :station
  belongs_to :store
end
