class EstablishmentCollection < ApplicationRecord
  belongs_to :user
  belongs_to :establishment

  def us_state_id
    self.establishment.us_state.id
  end
end
