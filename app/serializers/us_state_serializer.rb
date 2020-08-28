class UsStateSerializer < ActiveModel::Serializer
  attributes :id, :name, :abbrv, :nickname, :capital_city, :capital_lat, :capital_lng, :flag_img_url
end
