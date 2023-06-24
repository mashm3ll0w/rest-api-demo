class RestaurantMenuSerializer < ActiveModel::Serializer
  attributes :id, :name, :location

  has_many :menu_items
end
