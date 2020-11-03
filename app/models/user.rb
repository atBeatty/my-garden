class User < ApplicationRecord
    has_many :plants
    has_many :gardens, through: :plants
    validates :email, uniqueness: true
    has_secure_password

    
end
