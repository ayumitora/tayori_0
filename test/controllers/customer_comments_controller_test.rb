require 'test_helper'

class CustomerCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get customer_comments_create_url
    assert_response :success
  end

end
