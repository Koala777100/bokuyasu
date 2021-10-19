require 'test_helper'

class BokuyasuListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bokuyasu_lists_index_url
    assert_response :success
  end

  test "should get create" do
    get bokuyasu_lists_create_url
    assert_response :success
  end

  test "should get show" do
    get bokuyasu_lists_show_url
    assert_response :success
  end

  test "should get edit" do
    get bokuyasu_lists_edit_url
    assert_response :success
  end

  test "should get update" do
    get bokuyasu_lists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bokuyasu_lists_destroy_url
    assert_response :success
  end

end
