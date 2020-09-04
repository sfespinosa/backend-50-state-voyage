class UserRelationshipSerializer < ActiveModel::Serializer
  attributes :id
  has_one :followed_user_id
  has_one :follower_id
end
