class EstablishmentCollection < ApplicationRecord
  belongs_to :user
  belongs_to :establishment

  def us_state_id
    self.establishment.us_state.id
  end

  def map_marker
    self.establishment.map_markers.find { |marker| marker.user_id == self.user.id}
  end
end
