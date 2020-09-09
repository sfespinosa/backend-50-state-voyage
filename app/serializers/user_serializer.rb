class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :location, :email_address, :us_states, :state_collections, :age, :birthdate, :followed_users, :followers, :active_relationships, :friends_feed, :total_states_rankings

end
