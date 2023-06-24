class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  has_one :restaurant
end
