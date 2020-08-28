class EstablishmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone_number, :lat, :lng, :rating, :img_url, :website_url, :reference_id
  has_one :us_state
end
