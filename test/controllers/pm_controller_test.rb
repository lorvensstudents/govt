require 'test_helper'

class PmControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get pm_list_url
    assert_response :success
  end

  test "should get idiot" do
    get pm_idiot_url
    assert_response :success
  end

end
