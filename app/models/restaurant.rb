class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true

  has_many :menus
  has_many :orders, through: :menus
  has_many :users, through: :menus
end
