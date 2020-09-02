class EstablishmentCollectionSerializer < ActiveModel::Serializer
  attributes :id, :user_comments, :visited, :us_state_id, :map_marker
  has_one :user_id
  has_one :establishment
end
