class User < ApplicationRecord
    has_many :state_collections, dependent: :destroy
    has_many :us_states, through: :state_collections

    has_many :establishment_collections, dependent: :destroy
    has_many :establishments, through: :establishment_collections

    has_many :map_markers, dependent: :destroy
    has_many :markers, through: :map_markers, source: :establishment
    
    has_secure_password
    has_secure_password :recovery_password, validations: false

    validates :username, :email_address, uniqueness: true
    validates :username, :name, :age, :location, :email_address, presence: true
end
