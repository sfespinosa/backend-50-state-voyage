class UserRelationshipSerializer < ActiveModel::Serializer
  attributes :id, :followed_user
  has_one :followed_user_id 
  has_one :follower_id
end
