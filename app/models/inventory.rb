class Inventory < ApplicationRecord

  validates :product, presence: true
  validates :quantity, numericality: { only_integer: true,  :greater_than_or_equal_to => 0 }
  
end
