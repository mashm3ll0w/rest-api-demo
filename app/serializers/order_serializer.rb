class OrderSerializer < ActiveModel::Serializer
  attributes :id, :is_fulfilled
  has_one :user
  has_one :menu
end
