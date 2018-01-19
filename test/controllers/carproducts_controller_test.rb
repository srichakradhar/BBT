require 'test_helper'

class CarproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carproduct = carproducts(:one)
  end

  test "should get index" do
    get carproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_carproduct_url
    assert_response :success
  end

  test "should create carproduct" do
    assert_difference('Carproduct.count') do
      post carproducts_url, params: { carproduct: { carcategory_id: @carproduct.carcategory_id, fueltype: @carproduct.fueltype, model: @carproduct.model, name: @carproduct.name, price: @carproduct.price } }
    end

    assert_redirected_to carproduct_url(Carproduct.last)
  end

  test "should show carproduct" do
    get carproduct_url(@carproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_carproduct_url(@carproduct)
    assert_response :success
  end

  test "should update carproduct" do
    patch carproduct_url(@carproduct), params: { carproduct: { carcategory_id: @carproduct.carcategory_id, fueltype: @carproduct.fueltype, model: @carproduct.model, name: @carproduct.name, price: @carproduct.price } }
    assert_redirected_to carproduct_url(@carproduct)
  end

  test "should destroy carproduct" do
    assert_difference('Carproduct.count', -1) do
      delete carproduct_url(@carproduct)
    end

    assert_redirected_to carproducts_url
  end
end
