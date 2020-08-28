class UsState < ApplicationRecord
    has_many :establishments
    has_many :state_collections
end
