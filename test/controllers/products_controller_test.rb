require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get import" do
    get products_import_url
    assert_response :success
  end

end
