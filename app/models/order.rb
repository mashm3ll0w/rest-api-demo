class Order < ApplicationRecord
  belongs_to :user
  belongs_to :menu
  validates :is_fulfilled, inclusion: [true, false]
end
