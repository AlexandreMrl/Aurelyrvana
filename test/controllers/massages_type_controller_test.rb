require "test_helper"

class MassagesTypeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get massages_type_index_url
    assert_response :success
  end

  test "should get show" do
    get massages_type_show_url
    assert_response :success
  end
end
