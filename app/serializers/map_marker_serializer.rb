class MapMarkerSerializer < ActiveModel::Serializer
  attributes :id, :category
  has_one :user
  has_one :establishment
end
