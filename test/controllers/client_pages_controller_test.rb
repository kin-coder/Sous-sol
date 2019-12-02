require 'test_helper'

class ClientPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get client_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get client_pages_show_url
    assert_response :success
  end

  test "should get edit" do
    get client_pages_edit_url
    assert_response :success
  end

  test "should get new" do
    get client_pages_new_url
    assert_response :success
  end

  test "should get update" do
    get client_pages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get client_pages_destroy_url
    assert_response :success
  end

end
