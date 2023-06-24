class RestaurantMenuSerializer < ActiveModel::Serializer
  attributes :id, :name, :location

  has_many :menus
end
