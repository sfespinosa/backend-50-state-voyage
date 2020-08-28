class StateCollectionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :us_state
end
