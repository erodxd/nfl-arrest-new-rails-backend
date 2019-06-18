class ArrestSerializer < ActiveModel::Serializer
  attributes :id, :date, :name, :category, :description
end
