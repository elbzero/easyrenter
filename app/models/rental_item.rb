class RentalItem < ActiveRecord::Base
  has_many :rental_item_images
  accepts_nested_attributes_for :rental_item_images
  validates :price, numericality:{greater_than:0}
  validates :description, length:{ in: 5..100 }
end
