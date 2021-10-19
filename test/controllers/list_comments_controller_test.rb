require 'test_helper'

class ListCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get list_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get list_comments_destroy_url
    assert_response :success
  end

end
