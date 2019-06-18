class Comment < ApplicationRecord
    belongs_to :user, required: false
    belongs_to :player, required: false
end
