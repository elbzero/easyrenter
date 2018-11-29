class RentalItemImage < ActiveRecord::Base
  mount_uploader :item_image, RentalItemImageUploader
  belongs_to :rental_item
  validates :rental_item_id, presence: true
end
