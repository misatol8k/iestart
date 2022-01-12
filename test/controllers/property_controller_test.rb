require 'test_helper'

class PropertyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_index_url
    assert_response :success
  end

  test "should get new" do
    get property_new_url
    assert_response :success
  end

  test "should get show" do
    get property_show_url
    assert_response :success
  end

end
