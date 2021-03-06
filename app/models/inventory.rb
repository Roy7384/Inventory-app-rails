class Inventory < ApplicationRecord

  has_many :delete_comments
  
  acts_as_paranoid

  validates :product, presence: true, uniqueness: { case_sensitive: false, message: 'already exist' }
  validates :quantity, numericality: { only_integer: true,  :greater_than_or_equal_to => 0 }

end
