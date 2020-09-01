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
    validates :username, :name, :birthdate, :location, :email_address, presence: true

    def age
        (Time.now.to_s(:number).to_i - self.birthdate.to_time.to_s(:number).to_i)/10e9.to_i
    end

end
