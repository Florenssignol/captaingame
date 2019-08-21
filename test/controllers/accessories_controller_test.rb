require 'test_helper'

class AccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accessory = create(:accessory)
  end

  test "should get index" do
    get accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_accessory_url
    assert_response :success
  end

  test "should create accessory" do
    assert_difference('Accessory.count') do
      post accessories_url, params: { accessory: attributes_for(:accessory, :bow) }
    end

    assert_redirected_to accessory_url(Accessory.last)
  end

  test "should show accessory" do
    get accessory_url(@accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_accessory_url(@accessory)
    assert_response :success
  end

  test "should update accessory" do
    patch accessory_url(@accessory), params: { accessory: { 
      name: 'toto'
     } }
    assert_redirected_to accessory_url(@accessory)
  end

  test "should destroy accessory" do
    assert_difference('Accessory.count', -1) do
      delete accessory_url(@accessory)
    end

    assert_redirected_to accessories_url
  end
end
