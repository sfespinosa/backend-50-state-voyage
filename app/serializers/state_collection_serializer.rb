class StateCollectionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user_id
  has_one :us_state
end
