class Item < ApplicationRecord
  # validates :name, presence: true
  # validates :description, length: { maximum: 300 }
  # validates :type, inclusion: { in: %w(iced classic)}
  has_many :order_items
end
