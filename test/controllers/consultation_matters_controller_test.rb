require 'test_helper'

class ConsultationMattersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consultation_matters_index_url
    assert_response :success
  end

  test "should get new" do
    get consultation_matters_new_url
    assert_response :success
  end

  test "should get show" do
    get consultation_matters_show_url
    assert_response :success
  end

end
