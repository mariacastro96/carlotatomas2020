require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get countdown" do
    get countdown_url
    assert_response :success
  end

end
