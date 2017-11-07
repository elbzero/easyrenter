class RentalItemImage < ActiveRecord::Base
  mount_uploader :item_image, RentalItemImageUploader
  belongs_to :rental_item
end
