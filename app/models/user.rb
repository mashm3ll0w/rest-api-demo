class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :orders
  has_many :menu_items, through: :orders
  has_many :restaurants, through: :orders
end
