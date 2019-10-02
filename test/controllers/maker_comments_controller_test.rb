require 'test_helper'

class MakerCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get maker_comments_create_url
    assert_response :success
  end

end
