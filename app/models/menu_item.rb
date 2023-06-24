class MenuItem < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { only_integer: true}

  belongs_to :restaurant
  has_many :orders
  has_many :users, through: :orders
end
