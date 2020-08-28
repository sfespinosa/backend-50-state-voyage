class User < ApplicationRecord
    has_secure_password
    has_secure_password :recovery_password, validations: false
    validates :username, :email_address, uniqueness: true
    validates :username, :name, :age, :location, :email_address, presence: true
end
