class EstablishmentCollectionSerializer < ActiveModel::Serializer
  attributes :id, :user_comments, :visited, :us_state_id
  has_one :user_id
  has_one :establishment
end
