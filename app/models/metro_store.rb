class MetroStore < ActiveRecord::Base
  belongs_to :metro
  belongs_to :store
end
