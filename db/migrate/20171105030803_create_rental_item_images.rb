class CreateRentalItemImages < ActiveRecord::Migration
  def change
    create_table :rental_item_images do |t|
      t.integer :rental_item_id
      t.string :item_image
      t.boolean :contains_items_not_included

      t.timestamps null: false
    end
  end
end
