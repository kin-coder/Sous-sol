require 'test_helper'

class PrestatairePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prestataire_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get prestataire_pages_show_url
    assert_response :success
  end

  test "should get edit" do
    get prestataire_pages_edit_url
    assert_response :success
  end

  test "should get new" do
    get prestataire_pages_new_url
    assert_response :success
  end

  test "should get update" do
    get prestataire_pages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get prestataire_pages_destroy_url
    assert_response :success
  end

end
