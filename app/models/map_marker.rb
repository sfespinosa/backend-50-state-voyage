class MapMarker < ApplicationRecord
  belongs_to :user
  belongs_to :establishment
end