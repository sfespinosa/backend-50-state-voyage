class EstablishmentCollectionSerializer < ActiveModel::Serializer
  attributes :id, :user_comments, :visited
  has_one :user
  has_one :establishment
end
