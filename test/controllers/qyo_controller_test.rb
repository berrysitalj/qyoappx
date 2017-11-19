require 'test_helper'

class QyoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qyo_index_url
    assert_response :success
  end

  test "should get show" do
    get qyo_show_url
    assert_response :success
  end

  test "should get login_form" do
    get qyo_login_form_url
    assert_response :success
  end

  test "should get login_form_admin" do
    get qyo_login_form_admin_url
    assert_response :success
  end

end
