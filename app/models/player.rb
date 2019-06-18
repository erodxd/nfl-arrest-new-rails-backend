class Player < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    has_many :arrests
end
