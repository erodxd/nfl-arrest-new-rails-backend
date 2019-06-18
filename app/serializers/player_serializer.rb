class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :team, :team_city, :position
end
