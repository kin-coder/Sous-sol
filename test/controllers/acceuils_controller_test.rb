require 'test_helper'

class AcceuilsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get acceuils_index_url
    assert_response :success
  end

end
