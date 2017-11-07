require 'test_helper'

class RentalItemImagesControllerTest < ActionController::TestCase
  setup do
    @rental_item_image = rental_item_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rental_item_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rental_item_image" do
    assert_difference('RentalItemImage.count') do
      post :create, rental_item_image: { contains_items_not_included: @rental_item_image.contains_items_not_included, item_image: @rental_item_image.item_image, rental_item_id: @rental_item_image.rental_item_id }
    end

    assert_redirected_to rental_item_image_path(assigns(:rental_item_image))
  end

  test "should show rental_item_image" do
    get :show, id: @rental_item_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rental_item_image
    assert_response :success
  end

  test "should update rental_item_image" do
    patch :update, id: @rental_item_image, rental_item_image: { contains_items_not_included: @rental_item_image.contains_items_not_included, item_image: @rental_item_image.item_image, rental_item_id: @rental_item_image.rental_item_id }
    assert_redirected_to rental_item_image_path(assigns(:rental_item_image))
  end

  test "should destroy rental_item_image" do
    assert_difference('RentalItemImage.count', -1) do
      delete :destroy, id: @rental_item_image
    end

    assert_redirected_to rental_item_images_path
  end
end
