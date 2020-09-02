class MapMarkerSerializer < ActiveModel::Serializer
  attributes :id, :category, :lat, :lng
  has_one :user_id
  has_one :establishment_id
end
