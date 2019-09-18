require 'test_helper'

class EvaluatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get evaluates_index_url
    assert_response :success
  end

  test "should get show" do
    get evaluates_show_url
    assert_response :success
  end

  test "should get new" do
    get evaluates_new_url
    assert_response :success
  end

  test "should get edit" do
    get evaluates_edit_url
    assert_response :success
  end

end
