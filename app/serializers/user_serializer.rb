class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :age, :location, :email_address, :us_states, :state_collections

  
end
