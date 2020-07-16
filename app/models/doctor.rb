class Doctor < ApplicationRecord
    has_secure_password
    
    has_many :cases
end
