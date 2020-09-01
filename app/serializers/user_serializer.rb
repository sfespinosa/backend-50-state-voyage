class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :location, :email_address, :us_states, :state_collections, :age, :birthdate

end
