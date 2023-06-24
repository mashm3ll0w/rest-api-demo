class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  has_many :menu_items
  has_many :orders, through: :menu_items
  has_many :users, through: :menu_items
end
