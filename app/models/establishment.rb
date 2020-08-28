class Establishment < ApplicationRecord
  belongs_to :us_state
  has_many :establishment_collections
  has_many :users, through: :establishment_collections

  has_many :map_markers
  has_many :user_markers, through: :map_markers, source: :user
end
