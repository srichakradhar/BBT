require 'test_helper'

class CarcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carcategory = carcategories(:one)
  end

  test "should get index" do
    get carcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_carcategory_url
    assert_response :success
  end

  test "should create carcategory" do
    assert_difference('Carcategory.count') do
      post carcategories_url, params: { carcategory: { description: @carcategory.description, name: @carcategory.name } }
    end

    assert_redirected_to carcategory_url(Carcategory.last)
  end

  test "should show carcategory" do
    get carcategory_url(@carcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_carcategory_url(@carcategory)
    assert_response :success
  end

  test "should update carcategory" do
    patch carcategory_url(@carcategory), params: { carcategory: { description: @carcategory.description, name: @carcategory.name } }
    assert_redirected_to carcategory_url(@carcategory)
  end

  test "should destroy carcategory" do
    assert_difference('Carcategory.count', -1) do
      delete carcategory_url(@carcategory)
    end

    assert_redirected_to carcategories_url
  end
end
