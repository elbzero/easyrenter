require 'test_helper'

class RentalItemsControllerTest < ActionController::TestCase
  setup do
    @rental_item = rental_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rental_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rental_item" do
    assert_difference('RentalItem.count') do
      post :create, rental_item: { description: @rental_item.description, price: @rental_item.price }
    end

    assert_redirected_to rental_item_path(assigns(:rental_item))
  end

  test "should show rental_item" do
    get :show, id: @rental_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rental_item
    assert_response :success
  end

  test "should update rental_item" do
    patch :update, id: @rental_item, rental_item: { description: @rental_item.description, price: @rental_item.price }
    assert_redirected_to rental_item_path(assigns(:rental_item))
  end

  test "should destroy rental_item" do
    assert_difference('RentalItem.count', -1) do
      delete :destroy, id: @rental_item
    end

    assert_redirected_to rental_items_path
  end
end
