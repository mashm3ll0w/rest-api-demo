class OrderSerializer < ActiveModel::Serializer
  attributes :id, :isFulfilled, :boolean
  has_one :user
  has_one :menu
end
