class Arrest < ApplicationRecord
    belongs_to :player, required: false
end
