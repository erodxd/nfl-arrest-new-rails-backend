class User < ApplicationRecord
    has_secure_password
    has_many :comments, required: false
    has_many :players, through: :comments, required: false
end
