require 'rails_helper'

RSpec.describe RentalItem, type: :model do
  it "price is greater than zero" do
    rental_item = RentalItem.new(description:"example rental item",price:-1.12)
    expect(rental_item).to_not be_valid
  end
end
