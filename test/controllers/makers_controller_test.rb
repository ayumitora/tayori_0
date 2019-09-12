require 'test_helper'

class MakersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get makers_index_url
    assert_response :success
  end

  test "should get show" do
    get makers_show_url
    assert_response :success
  end

  test "should get new" do
    get makers_new_url
    assert_response :success
  end

  test "should get edit" do
    get makers_edit_url
    assert_response :success
  end

end
