class MapMarkerSerializer < ActiveModel::Serializer
  attributes :id, :category, :lat, :lng, :establishment
  has_one :user_id
  has_one :establishment_id
end
