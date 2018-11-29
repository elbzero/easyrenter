require 'rails_helper'

RSpec.describe RentalItem, type: :model do
  it "price cannot be less than 0.01" do
    rental_item = RentalItem.new(description:"example rental item",price:-1.12)
    expect(rental_item).to_not be_valid
  end
  it "price must be 0.01 or more" do
    rental_item = RentalItem.new(description:"example rental item 2",price:0.12)
    expect(rental_item).to be_valid
  end
  it "Description must have at least 5 characters" do
    rental_item = RentalItem.new(description:"canoe",price:1)
    expect(rental_item).to be_valid
  end
  it "Description cannot have less than 5 characters" do
    rental_item = RentalItem.new(description:"can",price:999.12)
    expect(rental_item).to_not be_valid
  end
  it "Description cannot be over 100 characters" do
    rental_item = RentalItem.new(description:"My grand canoe from the offshore of the Grand Bahamas is the perfect item for you to rent on vacation",price:521.12)
    expect(rental_item).to_not be_valid
  end

end
