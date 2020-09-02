class MapMarker < ApplicationRecord
  belongs_to :user
  belongs_to :establishment

  def lat
    self.establishment.lat
  end

  def lng
    self.establishment.lng
  end
  
end
