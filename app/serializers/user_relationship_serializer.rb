class UserRelationshipSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :following
end