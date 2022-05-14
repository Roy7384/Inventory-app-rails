class Inventory < ApplicationRecord

  validates :product, presence: true
  validates :quantity, numericality: { only_integer: true }
  
end
