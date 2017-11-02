class CreateRentalItems < ActiveRecord::Migration
  def change
    create_table :rental_items do |t|
      t.string :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
