require 'test_helper'

class SpecialistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get specialists_index_url
    assert_response :success
  end

  test "should get show" do
    get specialists_show_url
    assert_response :success
  end

end
