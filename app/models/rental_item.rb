class RentalItem < ActiveRecord::Base
  has_many :rental_item_images
  accepts_nested_attributes_for :rental_item_images
end
