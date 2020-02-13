require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get countdown" do
    get pages_countdown_url
    assert_response :success
  end

end
